---
version: 1.0.0
name: Blog Template Base
description: |
  Base design tokens for the canonical blog template (apps/blog-template).
  Each fork (apps/blog-{business}-{lang}/) MUST override these tokens with
  the business's brand identity. Values marked extraction_gap() are
  placeholders to be replaced by `npm run design:emit` (squad design-ops
  task `emit-design-md`) consuming the business brand bundle.

colors:
  primary: extraction_gap(business-color-primary — fork must override)
  primary-hover: extraction_gap(business-color-primary-hover — fork must override)
  secondary: extraction_gap(business-color-secondary — fork must override)
  tertiary: extraction_gap(business-color-tertiary — optional)
  neutral: "#0f172a"
  neutral-50: "#f8fafc"
  neutral-100: "#f1f5f9"
  neutral-200: "#e2e8f0"
  neutral-500: "#64748b"
  neutral-700: "#334155"
  neutral-900: "#0f172a"
  background: "#ffffff"
  foreground: "#0f172a"
  muted: "#f1f5f9"
  muted-foreground: "#64748b"
  border: "#e2e8f0"
  ring: extraction_gap(business-color-ring — defaults to primary)
  destructive: "#ef4444"
  success: "#10b981"
  warning: "#f59e0b"
  info: "#3b82f6"

typography:
  font-display: extraction_gap(business-font-display — fork must override)
  font-body: extraction_gap(business-font-body — fork must override)
  font-mono: '"JetBrains Mono", ui-monospace, SFMono-Regular, Menlo, Monaco, "Cascadia Code", monospace'
  size-h1: "2.25rem"
  size-h2: "1.875rem"
  size-h3: "1.5rem"
  size-body: "1rem"
  size-small: "0.875rem"
  line-height-tight: "1.2"
  line-height-normal: "1.5"
  line-height-relaxed: "1.75"

spacing:
  xs: "0.25rem"
  sm: "0.5rem"
  md: "1rem"
  lg: "1.5rem"
  xl: "2rem"
  2xl: "3rem"
  3xl: "4rem"

rounded:
  none: "0"
  sm: "0.25rem"
  md: "0.5rem"
  lg: "0.75rem"
  xl: "1rem"
  full: "9999px"

components:
  button-primary:
    background: var(--color-primary)
    color: var(--color-background)
    padding: "0.625rem 1.25rem"
    rounded: var(--rounded-md)
    font-weight: "600"
  button-primary-hover:
    background: var(--color-primary-hover)
  button-secondary:
    background: "transparent"
    color: var(--color-primary)
    border: "1px solid var(--color-border)"
    padding: "0.625rem 1.25rem"
    rounded: var(--rounded-md)
  button-ghost:
    background: "transparent"
    color: var(--color-foreground)
    padding: "0.5rem 1rem"
  card:
    background: var(--color-background)
    border: "1px solid var(--color-border)"
    rounded: var(--rounded-lg)
    padding: var(--spacing-lg)
  input-text:
    background: var(--color-background)
    border: "1px solid var(--color-border)"
    rounded: var(--rounded-md)
    padding: "0.5rem 0.75rem"
  badge-default:
    background: var(--color-muted)
    color: var(--color-muted-foreground)
    padding: "0.125rem 0.5rem"
    rounded: var(--rounded-full)
    font-size: var(--size-small)
  nav-header:
    background: var(--color-background)
    border-bottom: "1px solid var(--color-border)"
    padding: "1rem 1.5rem"
---

# Blog Template — Design System Base

> **Status:** Template canônico — cada fork por business OVERRIDE estes tokens com a identidade da marca via `npm run design:emit`.

## 1. Visual Theme & Atmosphere

Editorial, neutro, citation-friendly. O template é deliberadamente sóbrio para que **conteúdo seja o protagonista** — Key Takeaways, FAQ, tabelas e código. Nada de gradientes complexos, glassmorphism ou efeitos visuais que distraem o retriever (Perplexity/ChatGPT Search) ou aumentam carga cognitiva do leitor.

Brand expressivity entra via **paleta** (cores primárias do business) e **tipografia display** (fonte da marca). O resto (spacing, layout, components) fica neutro para não competir com conteúdo.

## 2. Color Palette & Roles

| Role | Token | Uso |
|---|---|---|
| Primary CTA | `--color-primary` | botões CTA, links inline em destaque, summary-box border |
| Primary hover | `--color-primary-hover` | estado hover de CTA |
| Secondary | `--color-secondary` | acentos secundários, badges destacadas |
| Foreground | `--color-foreground` | texto base body |
| Background | `--color-background` | fundo de página, cards |
| Muted | `--color-muted` | backgrounds de blocos secundários (KeyTakeaways, FAQ) |
| Muted FG | `--color-muted-foreground` | meta-texto (autor, data, reading time) |
| Border | `--color-border` | borders sutis em cards e divisores |
| Destructive / Success / Warning / Info | feedback states em CTAs e alerts |

**Forks override:** `--color-primary`, `--color-primary-hover`, `--color-secondary`, opcionalmente `--color-tertiary`. Resto fica neutro por design.

## 3. Typography Rules

**Hierarquia editorial clara — citation-ready.**

- **H1** (título de artigo): `--font-display`, `2.25rem`, weight 700, line-height tight
- **H2** (seções): `--font-display`, `1.875rem`, weight 600 — anchor ids auto-injetados (lib/toc.ts)
- **H3** (sub-seções): `--font-body`, `1.5rem`, weight 600
- **Body**: `--font-body`, `1rem`, line-height relaxed (1.75) para leitura longa
- **Small**: `--font-body`, `0.875rem`, line-height normal — meta-line, captions
- **Code inline**: `--font-mono`, fundo `--color-muted`
- **Code block**: `--font-mono`, fundo escuro, scroll horizontal

**Forks override:** `--font-display` e `--font-body` da marca. `--font-mono` fica fixo.

## 4. Components

8 atoms canônicos definidos no front matter (`components:` key) + extensões blog-specific:

- **AiShareButtons** — pills horizontais com logos ChatGPT/Gemini/Claude/Perplexity. Background `--color-muted`, hover `--color-primary` background com `--color-background` text.
- **KeyTakeaways** — card com fundo `--color-muted`, borda esquerda 4px `--color-primary`, lista numerada de 5 bullets.
- **FaqBlock** — accordion ou lista plain (sem JS para perf), Q em weight 600, A em weight 400.
- **TableOfContents** — sidebar sticky em desktop, drawer em mobile. Items são `<a href="#anchor">`.
- **ArticleCard** — card de listagem (homepage, /categoria, /related). Hero image 16:9, título h3, summary 2 linhas truncadas, meta-line.
- **Breadcrumb** — separator `›` (U+203A), itens linkados em `--color-muted-foreground`.
- **Pagination** — botões prev/next + numbered, rounded `--rounded-md`.
- **SearchIsland** (Preact) — input + dropdown de resultados. Única ilha JS no template.

## 5. Layout Principles

- **Grid**: max-width `64rem` (1024px) para conteúdo de artigo. Homepage e listagens usam `72rem` (1152px).
- **Vertical rhythm**: `--spacing-md` entre parágrafos, `--spacing-xl` entre seções (h2), `--spacing-2xl` entre blocos editoriais (KeyTakeaways → body → FAQ).
- **Reading column**: artigo body fica em `min(100%, 42rem)` (672px = ~75 chars/linha). TOC desktop fica à direita em column secundária.
- **Sticky elements**: nav-header sticky top, TOC desktop sticky a partir de breakpoint `lg`.

## 6. Depth & Elevation

Minimalista. Apenas 2 níveis:

- **Level 0** (default): zero shadow, apenas border `--color-border`.
- **Level 1** (hover em ArticleCard): `box-shadow: 0 4px 12px rgba(0,0,0,0.08)` + transição `200ms`.

Não usar shadow em CTAs (visual ruído desnecessário). Não usar shadow em cards estáticos.

## 7. Do's and Don'ts

✅ **DO:**
- Manter o conteúdo como protagonista — paleta neutra exceto onde brand expressivity importa
- Reutilizar `--color-muted` para todos os blocos secundários (KeyTakeaways, FAQ, code inline)
- Anchor links em todos os H2 (lib/toc.ts faz isso automaticamente)
- Reading column ≤ 42rem para conforto de leitura

❌ **DON'T:**
- Usar gradientes ou efeitos visuais complexos no body de artigo
- Colocar shadow em CTAs ou em cards estáticos
- Hardcode de cor em `globals.css` que não esteja declarada aqui
- Dark mode forçado sem override do business (dark mode é decisão do fork, não do template)

## 8. Responsive Behavior

| Breakpoint | Layout |
|---|---|
| `< 640px` (mobile) | Single column, TOC vira drawer top, search em modal |
| `640-1024px` (tablet) | Single column wider, TOC inline acima do body |
| `≥ 1024px` (desktop) | Two-column: body + TOC sticky lateral |
| `≥ 1280px` (large) | Same as desktop, mais padding lateral |

Tailwind breakpoints (default): `sm:640`, `md:768`, `lg:1024`, `xl:1280`, `2xl:1536`.

## 9. Agent Prompt Guide

### Quick Color Reference

- **Primary CTA:** `var(--color-primary)` — fork override (cor da marca)
- **Foreground text:** `var(--color-foreground)` — neutro near-black
- **Background:** `var(--color-background)` — pure white default
- **Muted bg:** `var(--color-muted)` — neutral-100 (#f1f5f9)
- **Border:** `var(--color-border)` — neutral-200 (#e2e8f0)

### Example Component Prompts

**Hero (homepage):**
> "Crie um hero para a homepage do blog [BUSINESS] com título h1 grande em `--font-display`, subtítulo em `--font-body` muted-foreground, CTA primário com `--color-primary`. Sem imagem hero — keep it editorial."

**ArticleCard:**
> "ArticleCard com hero image 16:9 (lazy-load via astro:assets), title h3, summary truncated 2 lines, meta-line (autor + data + reading time) em `--color-muted-foreground` text-small. Border radius `--rounded-lg`."

**KeyTakeaways:**
> "Renderiza array de 5 strings como lista numerada em card com background `--color-muted`, border-left 4px solid `--color-primary`. Título 'Principais conclusões' em h3 weight 600. Cada bullet citation-ready (auto-contido)."

**FaqBlock:**
> "Lista de Q&A: `<details>` HTML semântico (zero JS). Question em h3 weight 600, answer em body. Spacing entre items `--spacing-lg`. Emite `FAQPage` JSON-LD via lib/structured-data.ts."

**Nav-header:**
> "Nav minimal: logo à esquerda (`--color-foreground`), menu links no centro (`--color-muted-foreground`, hover `--color-foreground`), search icon à direita abre SearchIsland. Border-bottom 1px `--color-border`. Sticky top."

### Iteration Guide

1. **Primeiro pass:** confirmar que `--color-primary` é da marca do business (não default purple/blue).
2. **Segundo pass:** validar `--font-display` está carregada via Astro Fonts API ou `<link rel="preload">`.
3. **Terceiro pass:** rodar `npx @google/design.md lint DESIGN.md` — corrigir warnings de contraste WCAG AA.
4. **Quarto pass:** verificar reading column ≤ 42rem em desktop (Lighthouse acessibilidade).
5. **Quinto pass:** testar em mobile real — TOC drawer + AiShareButtons devem caber sem overflow.
6. **Sexto pass:** validar JSON-LD em Rich Results Test (search.google.com/test/rich-results) — Article + FAQPage + Organization devem estar válidos.

## Implementation

**Stack:** Astro 6.2 + `@astrojs/cloudflare` (SSR edge) + Tailwind CSS 4 + `@tailwindcss/vite` + Preact (única ilha: search) + TypeScript strict.

**Tailwind config:** CSS-first via `src/styles/global.css` com `@import "tailwindcss"` e `@theme inline`. Não há `tailwind.config.mjs`; os bindings `colors`, `fontFamily`, `container` e `radius` apontam para CSS vars runtime (`var(--color-primary)` etc).

**DTCG export:** `tokens.dtcg.json` espelha os tokens principais em formato W3C Design Tokens para auditoria e integração futura. `src/styles/global.css` continua sendo o source of truth runtime.

**shadcn:** NÃO usado neste template (decisão consciente — blog é minimal, não precisa do peso shadcn). Se um fork quiser adicionar, criar `components.json` e adotar.

**Token → utility mapping:**

| Token | Tailwind Utility | CSS var |
|---|---|---|
| `--color-primary` | `bg-primary text-primary border-primary` | `var(--color-primary)` |
| `--color-foreground` | `text-foreground` | `var(--color-foreground)` |
| `--color-foreground-muted` | `text-muted` | `var(--color-foreground-muted)` |
| `--rounded-md` | `rounded-md` | `var(--rounded-md)` |
| `--font-display` | `font-display` | `var(--font-display)` |

**Component source root:** `apps/blog-template/src/components/`.

**Regenerate command (forks):**
```bash
# Override DESIGN.md com brand bundle do business
npm run design:emit -- --business {slug} --bundle workspace/businesses/{slug}/L2-tactical/design/DESIGN.md
```

## Fidelity Notes

```yaml
shadows_detected: false  # template usa shadow apenas em hover de ArticleCard
fonts_proprietary: []    # template não declara fonts proprietárias — fork override
icons_not_captured: false  # icons inline SVG no /src/components/ não são tokens
photography_not_captured: true  # hero images vêm do conteúdo (D1 hero_image_url), não do DS
alpha_lost: []
extraction_gaps:
  - colors.primary
  - colors.primary-hover
  - colors.secondary
  - typography.font-display
  - typography.font-body
notes: |
  Este DESIGN.md é o BASE do template. Cada fork (apps/blog-{business}-{lang}/)
  precisa override os 5 extraction_gap acima com os tokens do business via
  emit-design-md task. Só depois do override o fork pode ser declarado completo.
```
