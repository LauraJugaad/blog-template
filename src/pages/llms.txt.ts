import type { APIRoute } from 'astro';
import { env } from '~/lib/runtime-env';
import { desc, eq } from 'drizzle-orm';
import { createDb } from '~/db/client';
import { articles, authors } from '~/db/schema';
import { getSiteConfig } from '~/lib/site';
import { publicAuthorFromDb, resolveArticleAuthor } from '~/lib/authors';

export const prerender = false;

/**
 * GET /llms.txt — emerging standard for LLM-friendly site indexing.
 *
 * Spec: https://llmstxt.org/
 * Format: H1 (site name), blockquote (description), H2 sections with
 * markdown link list — one entry per published article.
 *
 * Each link line:  - [Title](url): one-sentence summary
 *
 * The retriever reads this file once and gets a curated, citation-ready
 * map of the site without crawling every page. Pairs with sitemap.xml
 * (which targets search bots) — llms.txt targets LLM ingestion bots.
 *
 * Cache: 1h (3600s). Articles change infrequently enough that stale
 * data for an hour is acceptable; LLM crawlers tolerate this well.
 */
export const GET: APIRoute = async () => {
  const site = getSiteConfig(env);
  const db = createDb(env.DB);

  const [published, authorRows] = await Promise.all([
    db
      .select({
        slug: articles.slug,
        title: articles.title,
        summary: articles.summary,
        meta_description: articles.meta_description,
        category: articles.category,
        published_at: articles.published_at,
        author_slug: articles.author_slug,
        author_name: articles.author_name,
        author_url: articles.author_url,
      })
      .from(articles)
      .where(eq(articles.status, 'published'))
      .orderBy(desc(articles.published_at)),
    db.select().from(authors).where(eq(authors.status, 'active')),
  ]);
  const authorRowsBySlug = new Map(authorRows.map((author) => [author.slug, author]));

  // Group by category for cleaner navigation.
  const byCategory = new Map<string, typeof published>();
  for (const a of published) {
    const key = a.category || 'general';
    const arr = byCategory.get(key) ?? [];
    arr.push(a);
    byCategory.set(key, arr);
  }

  const escapeMd = (s: string): string =>
    s.replace(/\[/g, '\\[').replace(/\]/g, '\\]').replace(/\n/g, ' ').trim();

  const lines: string[] = [];

  // Header — required by spec.
  lines.push(`# ${site.siteName}`);
  lines.push('');
  lines.push(`> ${site.siteDescription}`);
  lines.push('');
  lines.push(`Language: ${site.siteLang}`);
  lines.push(`Site: ${site.siteUrl}`);
  if (site.siteAlternates.length > 0) {
    lines.push('');
    lines.push('Alternate languages:');
    for (const alt of site.siteAlternates) {
      lines.push(`- ${alt.lang}: ${alt.url}`);
    }
  }
  lines.push('');

  if (authorRows.length > 0) {
    lines.push('## Authors');
    lines.push('');
    for (const row of authorRows) {
      const author = publicAuthorFromDb(row, site);
      lines.push(`- [${escapeMd(author.name)}](${author.profileUrl}): ${escapeMd(author.shortBio || author.jobTitle || 'Author')}`);
    }
    lines.push('');
  }

  // Articles grouped by category. Spec encourages H2 section per topic.
  if (published.length === 0) {
    lines.push('## Articles');
    lines.push('');
    lines.push('_No published articles yet._');
  } else {
    for (const [cat, list] of byCategory) {
      lines.push(`## ${cat}`);
      lines.push('');
      for (const a of list) {
        const url = `${site.siteUrl}/${a.slug}`;
        const summary = (a.meta_description || a.summary || '').slice(0, 200);
        const author = resolveArticleAuthor(
          a,
          a.author_slug ? authorRowsBySlug.get(a.author_slug) : null,
          site,
        );
        lines.push(`- [${escapeMd(a.title)}](${url}): ${escapeMd(summary)} Author: ${escapeMd(author.name)}`);
      }
      lines.push('');
    }
  }

  return new Response(lines.join('\n'), {
    status: 200,
    headers: {
      'Content-Type': 'text/plain; charset=utf-8',
      'Cache-Control': 'public, max-age=3600',
    },
  });
};
