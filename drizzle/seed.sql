-- Seed data: 4 default categories.
--
-- PROD-SAFE: contains ONLY canonical categories. NO demo article.
-- For local development / staging, run also seed-dev.sql to insert a demo
-- article so the frontend has something to render before automation runs.
--
-- Idempotent: uses INSERT OR IGNORE so re-running is safe.
--
-- Each fork can override category names/descriptions via post-seed UPDATE
-- before running db:seed:remote, or by editing this file before deploy.

INSERT OR IGNORE INTO categories (slug, name, description, parent_slug) VALUES
  ('ia-fundamentos', 'IA — Fundamentos', 'Conceitos essenciais sobre inteligência artificial e modelos de linguagem.', NULL),
  ('tutoriais', 'Tutoriais', 'Guias passo a passo para implementar tecnologias modernas.', NULL),
  ('arquitetura', 'Arquitetura', 'Decisões de design, padrões e infraestrutura para sistemas modernos.', NULL),
  ('novidades', 'Novidades', 'Lançamentos, atualizações e tendências do ecossistema de tecnologia.', NULL);
