# Setup — Blog Astro+CF (Teste A/B vs WordPress)

> **Contexto:** Teste A/B de 60 dias comparando pipeline atual (yt-blog → WP em solarjugaad.com.br/artigos) vs novo (content-geo → Astro+CF em artigos-novo.solarjugaad.com.br).

## ✅ Onda 0 — Setup local (CONCLUÍDA 2026-05-06)

| Item | Status |
|------|--------|
| Fork `oalanicolas/blog-template` → `LauraJugaad/blog-template` | ✅ |
| Clonado em `Projeto 02 - Ebook.../blog-astro/` | ✅ |
| `wrangler.toml` customizado com vars Solar Jugaad + Laura Amorim author | ✅ |
| `src/styles/global.css` customizado com paleta Forest Green do brand-book | ✅ |
| Backup do squad spy antigo + design-md v1 em `~/.claude/_backups/` | ✅ |

## ✅ Onda 1 — Setup Cloudflare (CONCLUÍDA 2026-05-07 00:24 UTC)

**URL provisória:** https://solarjugaad-blog-test.laura-jugaad.workers.dev
**Worker:** `solarjugaad-blog-test`
**D1:** `solarjugaad-blog-test` (ID `60a1e6f2-a98c-45e8-97bd-e26fe132e2fb`, region ENAM)
**Account:** eletrica.jugaad@gmail.com (dfb74570ac9a1ef73692748b98abfa56)
**workers.dev subdomain:** `laura-jugaad.workers.dev`

Smoke test passou: /api/health retorna `{ok:true, status:healthy, checks:{db:up}, lang:pt-BR}`. Servido por POP GRU.

### Histórico passos executados

> **Tu precisa rodar interativo** porque envolve login Cloudflare via browser e secrets.

```bash
cd "/home/laura_helios/projetos/Projeto 02 - Ebook Gerente Solar - Predator/blog-astro"

# 1. Instalar dependências (Bun é o runtime preferido pelo blog-template)
bun install

# 2. Login Cloudflare (abre browser, autoriza Worker access)
bunx wrangler login

# 3. Provisionar D1 database
bunx wrangler d1 create solarjugaad-blog-test
# → COPIA o database_id retornado e cola em wrangler.toml linha "database_id"

# 4. Definir secrets (a sessão pede o valor após enter)
bunx wrangler secret put API_KEY      # Bearer token pra /api/* — gera um aleatório seguro: openssl rand -hex 32
bunx wrangler secret put INDEXNOW_KEY # IndexNow key — gera com: openssl rand -hex 16

# 5. Migrações iniciais
bun run db:migrate:remote
bun run db:seed:remote

# 6. Build + deploy primeira versão
bun run deploy

# 7. Configurar custom domain via Cloudflare Dashboard:
#    - Acessar: https://dash.cloudflare.com/?to=/:account/workers/services/view/solarjugaad-blog-test
#    - Settings → Triggers → Custom Domains → Add Custom Domain
#    - Domain: artigos-novo.solarjugaad.com.br
#    - Cloudflare cria automaticamente o CNAME (precisa que solarjugaad.com.br já esteja em CF nameservers)
#    - SE solarjugaad.com.br ainda está em GoDaddy DNS:
#      → Adicionar CNAME manual no GoDaddy: artigos-novo → workers.dev (CF dará o valor)

# 8. Smoke test
curl https://artigos-novo.solarjugaad.com.br/api/health
curl https://artigos-novo.solarjugaad.com.br/  # deve retornar HTML do blog vazio
```

## ⏳ Onda 2 — Integração content-geo squad

```bash
# Configurar squad content-geo pra apontar pro novo blog
# (o squad já está em ~/.claude/squads/content-geo/)

# 1. Criar arquivo de env do squad pra esse projeto:
echo "BLOG_API_URL=https://artigos-novo.solarjugaad.com.br
BLOG_KEY=<MESMO valor do API_KEY do passo 4 da Onda 1>
BLOG_LANG=pt-BR" > "/home/laura_helios/projetos/Projeto 02 - Ebook Gerente Solar - Predator/.content-geo.env"

# 2. Testar com 1 vídeo
# No Claude Code, dentro do projeto ebook:
#   /geo-chief *help
#   /geo-chief *article-from-youtube VIDEO_ID
```

## ⏳ Onda 3 — Operação A/B (60 dias)

### Pipeline split

| Próximos vídeos | Para onde |
|----------------|-----------|
| Vídeo N (par) | yt-blog → solarjugaad.com.br/artigos (WP — controle) |
| Vídeo N+1 (ímpar) | content-geo → artigos-novo.solarjugaad.com.br (Astro+CF — teste) |

Mantém `yt-blog` rodando normal pros pares. content-geo pega os ímpares.

### UTM tagging (CRÍTICO pra tracking)

Adicionar UTM nas URLs internas:

| Origem | UTM |
|--------|-----|
| WP /artigos | `?utm_source=blog-wp&utm_medium=organic&utm_campaign=ab-test` |
| Astro /artigos-novo | `?utm_source=blog-astro&utm_medium=organic&utm_campaign=ab-test` |

### Métricas decididas (ver `docs/AB-TEST-PLAN.md` pra detalhe)

**TOP 1: Tráfego orgânico (GSC + GA4)**
- Impressões, clicks, CTR, posição média por URL
- Mede em GSC: search/performance filtrar por landing page
- Mede em GA4: engagement reports filtrar por source/medium

**TOP 2: Citation frequency em LLMs (manual)**
- Lista 10 queries-chave que o ICP faria (ex: "como dimensionar sistema solar 4kWp", "quanto custa instalar solar Campinas")
- Toda quinzena: pergunta os 10 prompts em ChatGPT, Claude, Perplexity
- Conta menções de URLs do solarjugaad/artigos vs artigos-novo
- Planilha simples: query × LLM × data → URL citada

### Critério de vitória (após 60 dias)

| Cenário | Vencedor |
|---------|----------|
| Astro ganha em ambas métricas | Migra tudo |
| Astro ganha só em LLM citation, perde tráfego | Análise: vale GEO mais ou SEO clássico? |
| WP ganha em ambas | Fica em WP, registra learnings, descarta migração |
| Empate ou inconcluso | Estende teste +30 dias |

### Critério ABSOLUTO de abort (qualquer momento)

- Cloudflare downtime > 4h afetando BR
- Perda de tráfego no /artigos atual > 10% (não pode prejudicar controle)
- Bug bloqueante em D1 sem fix em 30 dias
- Custo CF estourar free tier sem motivo claro

## 📁 Arquivos importantes

- `wrangler.toml` — config Worker (database, vars, routes)
- `wrangler.toml.example` — template original (referência)
- `.env.example` — copia pra `.env` e preenche
- `src/styles/global.css` — paleta Forest Green aplicada
- `tokens.dtcg.json` — DTCG export (ainda referenciando paleta antiga, sincronizar manual ou rodar gerador)
- `DESIGN.md` — design tokens canonical (template Alan)
- `CLAUDE.md` — instruções pro Claude trabalhar nesse repo

## 🔗 Cross-references

- **Doc completo do A/B test:** `docs/AB-TEST-PLAN.md` (mesmo projeto)
- **Brand book de origem:** `../docs/brand/brand-book.md`
- **Squad content-geo:** `~/.claude/squads/content-geo/`
- **Skill design-md v2:** `~/.claude/skills/design-md/` (pode ser usado pra extrair DESIGN.md de competidores como referência)
- **Memória:** `project_blog_astro_ab_test.md`
- **Obsidian:** `🪜 I_Ag REGINA JUGAAD/0.0 - AIOX/7 - Apendizados AIOS/A-B Test Blog Astro vs WP.md`
