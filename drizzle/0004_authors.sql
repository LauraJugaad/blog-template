-- Additive migration: first-class author profiles.
-- Run once per environment with `bun run db:migrate:authors:local` or :remote.
--
-- Authors are now stable editorial entities. Articles keep legacy
-- author_name/author_url for backwards compatibility, but new content should
-- set author_slug so pages, JSON-LD, sitemap, and feeds can resolve a profile.

CREATE TABLE IF NOT EXISTS authors (
  slug TEXT PRIMARY KEY NOT NULL,
  name TEXT NOT NULL,
  short_bio TEXT,
  bio TEXT,
  avatar_url TEXT,
  url TEXT,
  job_title TEXT,
  same_as TEXT,
  credentials TEXT,
  knows_about TEXT,
  status TEXT DEFAULT 'active' NOT NULL,
  created_at TEXT NOT NULL,
  updated_at TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS authors_status_idx ON authors (status);

ALTER TABLE articles ADD COLUMN author_slug TEXT;
CREATE INDEX IF NOT EXISTS articles_author_slug_idx ON articles (author_slug);

INSERT OR IGNORE INTO authors (
  slug, name, short_bio, bio, avatar_url, url, job_title,
  same_as, credentials, knows_about, status, created_at, updated_at
) VALUES (
  'equipe-editorial',
  'Equipe Editorial',
  'Equipe responsável pela curadoria e publicação do blog.',
  'Equipe responsável pela curadoria, revisão e publicação de artigos técnicos no blog.',
  NULL,
  NULL,
  'Equipe Editorial',
  '[]',
  '[]',
  '["Conteúdo técnico","SEO","IA aplicada"]',
  'active',
  '2026-05-05T00:00:00.000Z',
  '2026-05-05T00:00:00.000Z'
);

UPDATE articles
SET author_slug = 'equipe-editorial'
WHERE author_slug IS NULL AND author_name = 'Equipe Editorial';
