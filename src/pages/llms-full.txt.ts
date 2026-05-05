import type { APIRoute } from 'astro';
import { desc, eq } from 'drizzle-orm';
import { createDb } from '~/db/client';
import { articles, categories } from '~/db/schema';
import { getSiteConfig } from '~/lib/site';

export const prerender = false;

/**
 * GET /llms-full.txt — variante "full content" do llmstxt.org standard.
 *
 * Spec: https://llmstxt.org/#llms-fulltxt-files
 *
 * Diferença vs /llms.txt:
 *   - /llms.txt        = índice (URL + summary curto por artigo)
 *   - /llms-full.txt   = corpus completo (HTML stripped → markdown-ish texto)
 *                        Pensado para consumo direto por LLM em context window
 *                        sem rastreamento adicional.
 *
 * Cada artigo é renderizado como bloco:
 *
 *   ## {title}
 *   > {summary}
 *   URL: {url} | Category: {category} | Published: {date} | Lang: {lang}
 *   Tags: {tag1, tag2, ...}
 *
 *   {content stripped of HTML, normalized whitespace}
 *
 *   ---
 *
 * Cache: 30min — corpus muda frequente (squad publica a cada 1-2h),
 * mas LLM ingestion não precisa de live data.
 */

function stripHtml(html: string): string {
  // Convert common block tags to newlines, strip the rest, normalize whitespace.
  return html
    .replace(/<\/(p|div|h[1-6]|li|blockquote|pre|tr)>/gi, '\n\n')
    .replace(/<br\s*\/?>/gi, '\n')
    .replace(/<li[^>]*>/gi, '- ')
    .replace(/<[^>]+>/g, '')
    .replace(/&nbsp;/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&lt;/g, '<')
    .replace(/&gt;/g, '>')
    .replace(/&quot;/g, '"')
    .replace(/&#39;/g, "'")
    .replace(/[ \t]+/g, ' ')
    .replace(/\n{3,}/g, '\n\n')
    .trim();
}

export const GET: APIRoute = async ({ locals }) => {
  const env = locals.runtime.env;
  const site = getSiteConfig(env);
  const db = createDb(env.DB);

  const [published, allCategories] = await Promise.all([
    db
      .select()
      .from(articles)
      .where(eq(articles.status, 'published'))
      .orderBy(desc(articles.published_at)),
    db.select().from(categories),
  ]);

  const catMap = new Map(allCategories.map((c) => [c.slug, c.name]));

  const lines: string[] = [];

  // Header
  lines.push(`# ${site.siteName} — Full Content`);
  lines.push('');
  lines.push(`> ${site.siteDescription}`);
  lines.push('');
  lines.push(`Language: ${site.siteLang}`);
  lines.push(`Site: ${site.siteUrl}`);
  lines.push(`Articles: ${published.length}`);
  lines.push(`Generated: ${new Date().toISOString()}`);
  if (site.siteAlternates.length > 0) {
    lines.push('');
    lines.push('Alternate-language siblings:');
    for (const alt of site.siteAlternates) {
      lines.push(`- ${alt.lang}: ${alt.url}`);
    }
  }
  lines.push('');
  lines.push('---');
  lines.push('');

  if (published.length === 0) {
    lines.push('_No published articles yet._');
  } else {
    for (const a of published) {
      const url = `${site.siteUrl}/${a.slug}`;
      const catName = a.category ? catMap.get(a.category) ?? a.category : null;
      const tags = Array.isArray(a.tags) ? a.tags : [];

      lines.push(`## ${a.title}`);
      lines.push('');
      lines.push(`> ${a.summary}`);
      lines.push('');
      const meta: string[] = [`URL: ${url}`];
      if (catName) meta.push(`Category: ${catName}`);
      if (a.published_at) meta.push(`Published: ${a.published_at.slice(0, 10)}`);
      meta.push(`Lang: ${site.siteLang}`);
      if (a.author_name) meta.push(`Author: ${a.author_name}`);
      lines.push(meta.join(' | '));
      if (tags.length > 0) {
        lines.push(`Tags: ${tags.join(', ')}`);
      }
      lines.push('');

      // KeyTakeaways are GEO-citable atoms — surface them explicitly.
      if (Array.isArray(a.key_takeaways) && a.key_takeaways.length > 0) {
        lines.push('### Key Takeaways');
        for (const kt of a.key_takeaways) {
          lines.push(`- ${kt}`);
        }
        lines.push('');
      }

      lines.push(stripHtml(a.content));
      lines.push('');

      // FAQ also citable.
      if (Array.isArray(a.faq) && a.faq.length > 0) {
        lines.push('### FAQ');
        for (const item of a.faq) {
          lines.push(`**Q: ${item.q}**`);
          lines.push(`A: ${item.a}`);
          lines.push('');
        }
      }

      lines.push('---');
      lines.push('');
    }
  }

  return new Response(lines.join('\n'), {
    status: 200,
    headers: {
      'Content-Type': 'text/plain; charset=utf-8',
      'Cache-Control': 'public, max-age=1800',
    },
  });
};
