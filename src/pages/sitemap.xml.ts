import type { APIRoute } from 'astro';
import { env } from '~/lib/runtime-env';
import { desc, eq } from 'drizzle-orm';
import { createDb } from '~/db/client';
import { articles, authors, categories } from '~/db/schema';
import { getSiteConfig } from '~/lib/site';

export const prerender = false;

function escape(str: string): string {
  return str
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&apos;');
}

export const GET: APIRoute = async () => {
  const site = getSiteConfig(env);
  const siteUrl = site.siteUrl;
  const db = createDb(env.DB);

  const [allArticles, allCategories, allAuthors] = await Promise.all([
    db
      .select({
        slug: articles.slug,
        category: articles.category,
        updated_at: articles.updated_at,
        published_at: articles.published_at,
      })
      .from(articles)
      .where(eq(articles.status, 'published'))
      .orderBy(desc(articles.published_at)),
    db.select({ slug: categories.slug }).from(categories),
    db
      .select({ slug: authors.slug, updated_at: authors.updated_at })
      .from(authors)
      .where(eq(authors.status, 'active')),
  ]);

  const now = new Date().toISOString();

  const articleLastmod = (a: { updated_at: string | null; published_at: string | null }) =>
    a.updated_at ?? a.published_at ?? now;

  const maxLastmod = (items: { updated_at: string | null; published_at: string | null }[]) =>
    items.reduce<string | null>((max, a) => {
      const lm = articleLastmod(a);
      return max === null || lm > max ? lm : max;
    }, null);

  const homeLastmod = maxLastmod(allArticles) ?? now;

  const urls: { loc: string; lastmod: string; changefreq: string; priority: string }[] = [
    { loc: siteUrl, lastmod: homeLastmod, changefreq: 'daily', priority: '1.0' },
  ];

  for (const cat of allCategories) {
    const catArticles = allArticles.filter((a) => a.category === cat.slug);
    const catLastmod = maxLastmod(catArticles) ?? now;
    urls.push({
      loc: `${siteUrl}/categoria/${cat.slug}`,
      lastmod: catLastmod,
      changefreq: 'weekly',
      priority: '0.7',
    });
  }

  for (const author of allAuthors) {
    urls.push({
      loc: `${siteUrl}/autor/${author.slug}`,
      lastmod: author.updated_at,
      changefreq: 'weekly',
      priority: '0.6',
    });
  }

  for (const a of allArticles) {
    urls.push({
      loc: `${siteUrl}/${a.slug}`,
      lastmod: articleLastmod(a),
      changefreq: 'monthly',
      priority: '0.8',
    });
  }

  // Hreflang annotations (ADR-023): emit only for the home URL, since path-level
  // siblings across alternate-language siblings rarely match 1:1 (content is native
  // per language, not translated). Home-level alternates are enough for Google.
  const hreflangs = site.siteAlternates.length > 0
    ? [{ lang: site.siteLang, url: siteUrl }, ...site.siteAlternates]
    : [];
  const renderHreflang = (u: { loc: string }) =>
    u.loc === siteUrl && hreflangs.length > 0
      ? hreflangs
          .map(
            (h) =>
              `    <xhtml:link rel="alternate" hreflang="${escape(h.lang)}" href="${escape(h.url)}" />\n`,
          )
          .join('')
      : '';

  const urlsetAttrs =
    hreflangs.length > 0
      ? `xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xhtml="http://www.w3.org/1999/xhtml"`
      : `xmlns="http://www.sitemaps.org/schemas/sitemap/0.9"`;

  const xml =
    `<?xml version="1.0" encoding="UTF-8"?>\n` +
    `<urlset ${urlsetAttrs}>\n` +
    urls
      .map(
        (u) =>
          `  <url>\n` +
          `    <loc>${escape(u.loc)}</loc>\n` +
          `    <lastmod>${escape(u.lastmod)}</lastmod>\n` +
          `    <changefreq>${u.changefreq}</changefreq>\n` +
          `    <priority>${u.priority}</priority>\n` +
          renderHreflang(u) +
          `  </url>`,
      )
      .join('\n') +
    `\n</urlset>\n`;

  return new Response(xml, {
    status: 200,
    headers: {
      'Content-Type': 'application/xml; charset=utf-8',
      'Cache-Control': 'public, max-age=3600',
    },
  });
};
