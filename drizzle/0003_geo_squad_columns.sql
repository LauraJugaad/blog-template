-- Additive migration: GEO squad signal columns on articles.
-- Run once per environment with `bun run db:migrate:geosquad:local` or :remote.
--
-- These columns are populated by the future content-geo squad
-- (PRD: docs/prd/prd-content-geo-squad.md v0.4.0). All NULL by default —
-- no breaking change for existing forks. Template + earlier forks ignore
-- them silently until the squad is materialized.
--
-- Fields:
--   citation_score        REAL — score 0-100 of LLM citation rate observed
--                          across Perplexity/ChatGPT/Gemini/AI Overviews
--                          over rolling 90d window (FR7 monitor-citations,
--                          NFR14 ≥90d window). NULL = not yet measured.
--   cluster_pillar_slug   TEXT — slug of the pillar article this article
--                          belongs to in a topical-authority cluster
--                          (FR13 topical-authority-build). NULL = not part
--                          of a cluster, or itself the pillar.
--   verify_pass_rate      REAL — 0-100 % of factual claims verified by
--                          Exa+Firecrawl at publish time (FR18 verify-claims,
--                          NFR15 ≥95% to publish). NULL = legacy article
--                          published before verify-claims existed.
--   verify_report_url     TEXT — URL or path to verify-report.yaml with
--                          per-claim sources + Highlights (audit trail
--                          for legal-risk claims about competitors).
--                          NULL = no report archived.

ALTER TABLE articles ADD COLUMN citation_score REAL;
ALTER TABLE articles ADD COLUMN cluster_pillar_slug TEXT;
ALTER TABLE articles ADD COLUMN verify_pass_rate REAL;
ALTER TABLE articles ADD COLUMN verify_report_url TEXT;

-- Index on cluster_pillar_slug to make cluster queries cheap (audit-orphans
-- and topical-authority workflows query "all spokes of pillar X" frequently).
CREATE INDEX IF NOT EXISTS articles_cluster_pillar_idx ON articles (cluster_pillar_slug);
