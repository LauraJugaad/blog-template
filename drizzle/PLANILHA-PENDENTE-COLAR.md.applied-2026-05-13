# Atualização pendente da planilha mestra

> **Por que pendente:** token Google MCP expirou. Não consegui sincronizar automaticamente.
> **Quando voltar:** reautentica o MCP google-drive E/OU cola manual essas 3 linhas na Aba 2.

URL da planilha: https://docs.google.com/spreadsheets/d/1CAS-c0_mPvLlraE-4zoQ57sIMluNzdVIOKxrLo5uIao/edit

---

## Aba 2 — `2_Posts_Publicados` — adicionar 3 linhas

Colar EXATAMENTE essas 3 linhas (separadas por TAB) abaixo do último (1281 / risco-incendio):

```tsv
018	https://www.solarjugaad.com.br/artigos/inclinacao-painel-solar-telhado-metalico-garantia	Erguer painel em telhado metálico custa 12 anos de garantia — e o vendedor não conta	inclinacao-painel-solar-telhado-metalico-garantia	P3 Equipamentos / Estrutura	-	(auditar pos-publish)	5	-	-	-	2026-05-10	2026-05-10	Live (Astro Edge Edition via redirect 301)	Ensaio autoral v2.8 inaugural. Estrutura revelação. Fonte: Aula 71 (gZflh9Zrh-k). Renderizado Cloudflare Workers + D1.
019	https://www.solarjugaad.com.br/artigos/app-energia-solar-garantia-monitoramento	O app do solar não é "uma boa ter" — sem ele tu perde garantia e vira chute técnico	app-energia-solar-garantia-monitoramento	P5 Pós-instalação / Monitoramento	-	(auditar pos-publish)	5	-	-	-	2026-05-11	2026-05-11	Live (Astro Edge Edition via redirect 301)	Ensaio autoral v2.8. Estrutura revelação. Fonte: Aula 53 (0KGWnhPthvs). Cita Apsystems EMA, Hoymiles S-Miles, Huawei FusionSolar, Daycore.
020	https://www.solarjugaad.com.br/artigos/energia-solar-orfa-vendedor-some-tecnologia-muda	Energia solar órfã: o que sobra quando o vendedor some e a tecnologia muda	energia-solar-orfa-vendedor-some-tecnologia-muda	P1 Qualificação Cliente / Pós-venda	-	(auditar pos-publish)	5	-	-	-	2026-05-12	2026-05-12	Live (Astro Edge Edition via redirect 301)	Ensaio autoral v2.8. Estrutura EXPERIÊNCIA (1ª do cardápio). Fonte: Aula 74 (YoP4LbKrReE, 184 views). Cita Agner como referência preço justo. 1595 palavras.
```

---

## Aba 1 — `1_Keyword_Backlog` — marcar 3 aulas como consumidas

Atualizar status das 3 aulas que viraram blog (se já tinham linha na aba):

| Vídeo origem | Aula | Status antes | Status novo |
|--------------|------|--------------|-------------|
| `gZflh9Zrh-k` | #71 — Inclinação correta painel | (vazia ou ausente) | **publicada (article-018)** |
| `0KGWnhPthvs` | #53 — App energia solar | (vazia ou ausente) | **publicada (article-019)** |
| `YoP4LbKrReE` | #74 — Energia solar órfã | (vazia ou ausente) | **publicada (article-020)** |

Se as linhas não existem na Aba 1, criar novas:

```tsv
EX-015	inclinacao painel solar telhado metalico	(estimar)	(estimar)	-	informational	P3 Equipamentos	-	publicada	018	P1	Aula YT	gZflh9Zrh-k	2026-05-10	Article 018 ensaio v2.8 inaugural — Astro Edge
EX-016	app energia solar monitoramento garantia	(estimar)	(estimar)	-	informational	P5 Pós-instalação	-	publicada	019	P1	Aula YT	0KGWnhPthvs	2026-05-11	Article 019 ensaio v2.8 — Astro Edge
EX-017	energia solar orfa empresa instaladora	(estimar)	(estimar)	-	commercial	P1 Qualificação Cliente	-	publicada	020	P0	Aula YT	YoP4LbKrReE	2026-05-12	Article 020 ensaio v2.8 — Astro Edge — estrutura experiência
```

---

## Aba 5 — `5_Source_Inventory` — marcar 3 transcripts consumidos

Aulas que viraram blog (atualizar coluna Status se existe):

- `gZflh9Zrh-k` (Aula 71) → publicada article-018
- `0KGWnhPthvs` (Aula 53) → publicada article-019
- `YoP4LbKrReE` (Aula 74) → publicada article-020

---

## Como acessar planilha via curl direto (alternativa)

A planilha é privada, precisa login. Quando reautenticar MCP google-drive:

```bash
# Listar abas
mcp__google-drive__listSheets spreadsheetId=1CAS-c0_mPvLlraE-4zoQ57sIMluNzdVIOKxrLo5uIao

# Adicionar linhas na Aba 2
mcp__google-drive__appendSpreadsheetRows ...
```

---

*Doc gerado 2026-05-13. Remover quando planilha sincronizada.*
