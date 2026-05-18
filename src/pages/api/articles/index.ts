import type { APIRoute } from 'astro';
import { and, desc, eq, sql } from 'drizzle-orm';

// O pacote `ulid` (npm) crasha no module-load em Cloudflare Workers:
// a última linha do ESM (`const ulid = factory();`) dispara detectPrng()
// que procura `window.crypto`/`require('crypto')` — nenhum disponível no
// runtime do Worker. Reimplementação inline usa o Web Crypto nativo.
const ENCODING = '0123456789ABCDEFGHJKMNPQRSTVWXYZ';
function ulid(): string {
  const TIME_LEN = 10;
  const RAND_LEN = 16;
  let now = Date.now();
  let timeStr = '';
  for (let i = 0; i < TIME_LEN; i++) {
    const mod = now % ENCODING.length;
    timeStr = ENCODING.charAt(mod) + timeStr;
    now = (now - mod) / ENCODING.length;
  }
  const randBuf = crypto.getRandomValues(new Uint8Array(RAND_LEN));
  let randStr = '';
  for (let i = 0; i < RAND_LEN; i++) {
    randStr += ENCODING.charAt(randBuf[i] % ENCODING.length);
  }
  return timeStr + randStr;
}
import { createDb } from '~/db/client';
import { articles, authors } from '~/db/schema';
import { isReservedSlug, slugify, uniqueSlug } from '~/lib/slug';
import { validateCreate } from '~/lib/article-input';
import { badRequest, json, methodNotAllowed, serverError } from '~/lib/api-response';
import { computeReadingTime } from '~/lib/structured-data';
import { env } from '~/lib/runtime-env';

export const prerender = false;

export const GET: APIRoute = async ({ url }) => {
  const db = createDb(env.DB);

  const status = url.searchParams.get('status'); // optional: draft|published
  const category = url.searchParams.get('category');
  const authorSlug = url.searchParams.get('author_slug') ?? url.searchParams.get('author');
  const page = Math.max(1, Number(url.searchParams.get('page') ?? '1'));
  const limit = Math.min(100, Math.max(1, Number(url.searchParams.get('limit') ?? '20')));
  const offset = (page - 1) * limit;

  const conditions = [];
  if (status === 'draft' || status === 'published') {
    conditions.push(eq(articles.status, status));
  }
  if (category) {
    conditions.push(eq(articles.category, category));
  }
  if (authorSlug) {
    conditions.push(eq(articles.author_slug, authorSlug));
  }
  const where = conditions.length > 0 ? and(...conditions) : undefined;

  const [items, totalRow] = await Promise.all([
    db
      .select()
      .from(articles)
      .where(where)
      .orderBy(desc(articles.created_at))
      .limit(limit)
      .offset(offset),
    db
      .select({ count: sql<number>`count(*)` })
      .from(articles)
      .where(where),
  ]);

  return json({
    items,
    page,
    limit,
    total: totalRow[0]?.count ?? 0,
  });
};

export const POST: APIRoute = async ({ request }) => {
  const db = createDb(env.DB);

  let body: unknown;
  try {
    body = await request.json();
  } catch {
    return badRequest('invalid JSON body');
  }

  const parsed = validateCreate(body);
  if (!parsed.ok || !parsed.value) {
    return badRequest('validation failed', parsed.errors);
  }
  const input = parsed.value;

  const baseSlug = input.slug ? slugify(input.slug) : slugify(input.title);
  if (!baseSlug) return badRequest('could not derive a slug from title');
  if (isReservedSlug(baseSlug, env.INDEXNOW_KEY)) {
    return badRequest(
      `slug "${baseSlug}" is reserved (collides with a blog route). Pick a different title or pass an explicit slug.`,
    );
  }

  const slug = await uniqueSlug(baseSlug, async (candidate) => {
    const row = await db
      .select({ slug: articles.slug })
      .from(articles)
      .where(eq(articles.slug, candidate))
      .limit(1);
    return row.length > 0;
  });

  const now = new Date().toISOString();
  const id = ulid();
  const requestedAuthorSlug = input.author_slug ?? env.DEFAULT_AUTHOR_SLUG;
  let authorSlug: string | null = null;
  let authorName = input.author_name ?? env.DEFAULT_AUTHOR_NAME;
  let authorUrl = input.author_url ?? env.DEFAULT_AUTHOR_URL;

  if (requestedAuthorSlug) {
    const authorRows = await db
      .select()
      .from(authors)
      .where(and(eq(authors.slug, requestedAuthorSlug), eq(authors.status, 'active')))
      .limit(1);
    if (authorRows.length === 0) {
      return badRequest(`author_slug "${requestedAuthorSlug}" does not match an active author`);
    }
    const author = authorRows[0]!;
    authorSlug = author.slug;
    authorName = author.name;
    authorUrl = author.url ?? `${env.SITE_URL.replace(/\/$/, '')}/autor/${author.slug}`;
  }

  try {
    await db.insert(articles).values({
      id,
      slug,
      title: input.title,
      meta_title: input.meta_title ?? null,
      meta_description: input.meta_description ?? null,
      summary: input.summary,
      content: input.content,
      category: input.category ?? null,
      tags: input.tags ?? [],
      author_slug: authorSlug,
      author_name: authorName,
      author_url: authorUrl,
      status: 'draft',
      published_at: null,
      updated_at: now,
      created_at: now,
      indexnow_sent: 0,
      hero_image_url: input.hero_image_url ?? null,
      key_takeaways: input.key_takeaways ?? null,
      faq: input.faq ?? null,
      reading_time_min: computeReadingTime(input.content, env.SITE_LANG),
      aggregate_rating: input.aggregate_rating ?? null,
    });
  } catch (err) {
    return serverError(err instanceof Error ? err.message : String(err));
  }

  const created = await db
    .select()
    .from(articles)
    .where(eq(articles.id, id))
    .limit(1);

  return json({ article: created[0] }, { status: 201 });
};

export const ALL: APIRoute = () => methodNotAllowed(['GET', 'POST']);
