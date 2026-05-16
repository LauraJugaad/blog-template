# Versões do .htaccess Hostnet (pasta /solarjugaad/)

Histórico das versões do `.htaccess` aplicadas em `/solarjugaad/` no FTP Hostnet.

| Versão | Quando | Estado |
|--------|--------|--------|
| `01-pre-mudanca-original.txt` | 10/05/2026 18:58 | Estado original WP-only (WP Rocket + WordPress + Cerber). Backup pré-redirect Astro. |
| `02-com-redirects-301-3-articles.txt` | 12/05/2026 21:32 | Estado anterior: bloco `# BEGIN ASTRO EDGE REDIRECT` com 3 RewriteRules (article-018, 019, 020). |
| `03-com-redirects-301-4-articles.txt` | 13/05/2026 22:11 | Estado anterior: + article-021 (comprar energia solar não é fácil, Aula 28). |
| `04-com-redirects-301-5-articles.txt` | 15/05/2026 09:30 | Estado anterior: + article-022 (créditos de carbono solar residencial, Aula 73). |
| `05-com-redirects-301-9-articles.txt` | 15/05/2026 11:00 | Estado anterior: + article-023/024/025/026 (aluguel/ICMS/híbrido/preço, Aulas 37/69/78/9). |
| `06-com-redirects-301-14-articles.txt` | 16/05/2026 01:13 | Estado em produção: + article-027/028/029/030/031 (anti-ilhamento/payback/rural/manifesto/intersolar, Aulas 35/48/26/66/75). |

## Acesso FTP

- Host: `ftp.eletricajugaad.com.br`
- User: `eletricajugaad`
- Pass: ver `scripts/update-content.sh` (variável `FTP_PASS`)
- PASV mode (não EPSV, não SFTP)
- Pasta: `/solarjugaad/`

## Para baixar .htaccess atual

```bash
curl --ftp-pasv --user "eletricajugaad:<senha>" \
  "ftp://ftp.eletricajugaad.com.br/solarjugaad/.htaccess" \
  -o htaccess-atual.txt
```

## Para subir nova versão

```bash
curl --ftp-pasv --user "eletricajugaad:<senha>" \
  -T nova-versao.txt \
  "ftp://ftp.eletricajugaad.com.br/solarjugaad/.htaccess"
```

## Quando trocar [R=301,L] por [P,L] (proxy reverse)

Status 13/05/2026: Hostnet disse que ativou mod_proxy mas teste falhou HTTP 500 (rollback feito). Aguardando confirmação técnica deles.

Quando confirmar funcional:
1. Pegar `02-com-redirects-301-3-articles.txt`
2. Substituir cada `[R=301,L]` por `[P,L]` no bloco `# BEGIN ASTRO EDGE REDIRECT`
3. Upload via FTP
4. Smoke test 1 URL — se HTTP 200 OK, sucesso
5. Se HTTP 500 — rollback imediato + reportar Hostnet
