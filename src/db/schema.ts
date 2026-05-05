import { sqliteTable, text, integer, real, index } from 'drizzle-orm/sqlite-core';

export const categories = sqliteTable('categories', {
  slug: text('slug').primaryKey(),
  name: text('name').notNull(),
  description: text('description'),
  parent_slug: text('parent_slug'),
});

export const authors = sqliteTable(
  'authors',
  {
    slug: text('slug').primaryKey(),
    name: text('name').notNull(),
    short_bio: text('short_bio'),
    bio: text('bio'),
    avatar_url: text('avatar_url'),
    url: text('url'),
    job_title: text('job_title'),
    same_as: text('same_as', { mode: 'json' }).$type<string[]>(),
    credentials: text('credentials', { mode: 'json' }).$type<string[]>(),
    knows_about: text('knows_about', { mode: 'json' }).$type<string[]>(),
    status: text('status', { enum: ['active', 'hidden'] }).notNull().default('active'),
    created_at: text('created_at').notNull(),
    updated_at: text('updated_at').notNull(),
  },
  (table) => [index('authors_status_idx').on(table.status)],
);

export interface FaqItem {
  q: string;
  a: string;
}

/**
 * AggregateRating — apenas para artigos que resenham/comparam ferramentas
 * ou produtos com metodologia de avaliação explícita no próprio artigo.
 * Emite schema.org/AggregateRating no Article JSON-LD, o que habilita
 * rich snippet de estrelas no Google.
 *
 * `value` é a média (ex: 4.6), `count` é o nº total de avaliações que
 * fundamentam essa média (ex: nº de ferramentas comparadas, nº de
 * dimensões avaliadas ou nº de reviews agregadas), `best`/`worst` são
 * os limites da escala (default 5/1).
 *
 * NÃO preencher em artigos tutoriais/guias — viola as Google Search
 * Essentials e pode acionar manual action.
 */
export interface AggregateRating {
  value: number;
  count: number;
  best?: number;
  worst?: number;
}

export const articles = sqliteTable(
  'articles',
  {
    id: text('id').primaryKey(), // ULID
    slug: text('slug').notNull().unique(),
    title: text('title').notNull(),
    meta_title: text('meta_title'),
    meta_description: text('meta_description'),
    summary: text('summary').notNull(),
    content: text('content').notNull(),
    category: text('category').references(() => categories.slug),
    tags: text('tags', { mode: 'json' }).$type<string[]>(),
    author_slug: text('author_slug').references(() => authors.slug),
    author_name: text('author_name').notNull(),
    author_url: text('author_url'),
    status: text('status', { enum: ['draft', 'published'] })
      .notNull()
      .default('draft'),
    published_at: text('published_at'),
    updated_at: text('updated_at').notNull(),
    created_at: text('created_at').notNull(),
    indexnow_sent: integer('indexnow_sent').notNull().default(0),
    hero_image_url: text('hero_image_url'),
    key_takeaways: text('key_takeaways', { mode: 'json' }).$type<string[]>(),
    faq: text('faq', { mode: 'json' }).$type<FaqItem[]>(),
    reading_time_min: integer('reading_time_min'),
    aggregate_rating: text('aggregate_rating', { mode: 'json' }).$type<AggregateRating>(),
    // GEO squad signal columns (migration 0003) — populated by content-geo
    // squad per PRD docs/prd/prd-content-geo-squad.md v0.4.0. All NULL by
    // default; legacy articles ignore them transparently.
    citation_score: real('citation_score'),
    cluster_pillar_slug: text('cluster_pillar_slug'),
    verify_pass_rate: real('verify_pass_rate'),
    verify_report_url: text('verify_report_url'),
  },
  (table) => [
    index('articles_status_idx').on(table.status),
    index('articles_published_at_idx').on(table.published_at),
    index('articles_category_idx').on(table.category),
    index('articles_author_slug_idx').on(table.author_slug),
    index('articles_cluster_pillar_idx').on(table.cluster_pillar_slug),
  ],
);

export type Article = typeof articles.$inferSelect;
export type NewArticle = typeof articles.$inferInsert;
export type Author = typeof authors.$inferSelect;
export type NewAuthor = typeof authors.$inferInsert;
export type Category = typeof categories.$inferSelect;
export type NewCategory = typeof categories.$inferInsert;
