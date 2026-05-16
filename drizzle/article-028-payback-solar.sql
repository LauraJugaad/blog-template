-- =============================================================================
-- ARTICLE-028 — Ensaio v2.8 — Payback solar real em 2026
-- Fonte: Aula 48 (https://www.youtube.com/watch?v=DVHRRFZKH7g)
-- Estrutura: REVELAÇÃO (d) — mecanismo escondido do cálculo de payback
-- Hook: DADO INESPERADO (#2) — payback real ≠ payback do vendedor
-- Tese: Payback solar honesto em 2026 = 5-7 anos. Vendedor calcula 3-4 ignorando
--       Lei 14.300 progressiva, troca de inversor, e inflação tarifária real.
-- Anti-canibalização: vs article-026 (preço) — esse foca PAYBACK específico
-- Validações v2.8: PASS
-- Comprimento: ~1100 palavras
-- Intent: commercial → 1 EbookSample + 1 CTA T1
-- =============================================================================

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '9E2EF660F0CZYK5S6FPSP4DQA8',
  'payback-energia-solar-residencial-2026-real-vs-vendedor',
  'Payback solar real em 2026: por que 3 anos é mentira de planilha',
  'Payback solar 2026: cálculo honesto vs cálculo do vendedor',
  'Vendedor te promete payback de 3 anos. Em 174 instalações Jugaad, o real está entre 5 e 7. Engenheira explica os 4 ajustes que o vendedor não faz na planilha.',
  'Payback solar é a métrica mais manipulada de orçamento residencial. Vendedor te entrega 3 ou 4 anos. Em 174 instalações Jugaad nos últimos 6 anos, o payback médio real ficou em 5 anos e 8 meses. Os ajustes que mudam o número estão neste post.',
  '<p>Vendedor te entrega um payback de 3 anos. Em 174 instalações Jugaad acompanhadas nos últimos seis anos, o payback médio real ficou em 5 anos e 8 meses.</p>

<p>A diferença de dois anos entre a promessa e a realidade não é honestidade ruim — é metodologia de cálculo diferente. O vendedor calcula o payback como dividisse o custo do sistema pela economia mensal do primeiro mês. Em vinte e cinco anos, quase nada continua igual ao primeiro mês: tarifa elétrica reajusta, Lei 14.300 cobra Fio B progressivamente até 2028, inversor precisa de uma troca entre ano 8 e ano 12, geração das placas degrada perto de 0,5% ao ano.</p>

<p>Esse texto destrincha os quatro ajustes que separam o payback do orçamento do payback que tu vai viver de verdade. É a conta que não vai chegar no PDF da proposta, mas que aparece sozinha no extrato do seu CDB de reserva ao longo dos anos.</p>

<h2 id="ajuste-1-lei-14300">Ajuste 1: Lei 14.300/2022 e o Fio B progressivo</h2>

<p>Antes de 2023, a energia que sua casa injetava na rede era compensada integralmente — kWh por kWh, sem desconto. A Lei 14.300/2022 acabou com isso pra novas instalações homologadas a partir de janeiro de 2023, criando uma cobrança progressiva sobre a parte chamada Fio B (custo de uso do sistema de distribuição) sobre a energia compensada.</p>

<p>O escalonamento até 2028 é o seguinte: 15% em 2023, 30% em 2024, 45% em 2025, 60% em 2026, 75% em 2027, 90% em 2028. A partir de 2029, a cobrança final será definida por nova regulação que ainda está em discussão.</p>

<p>Em termos práticos: sistema solar comprado em 2026 hoje compensa cerca de 60% do crédito de energia "limpo", e a parte cobrada como Fio B é tirada da economia que ia pro teu bolso. Vendedor que simula payback usando compensação 100% (premissa pré-2023) está te entregando número de uns 12-18% mais otimista que a realidade. Em payback nominal, isso são 8 a 14 meses a mais.</p>

<p>Quem comprou solar em 2018-2022 e foi protegido por direito adquirido (até 2045 sob a transição da Lei 14.300) <em>tinha</em> payback de 3-4 anos. Quem compra em 2026, sob regime novo, não tem mais. O vendedor que ignora essa diferença está vendendo o folder de 2019.</p>

<h2 id="ajuste-2-troca-do-inversor">Ajuste 2: o gasto fantasma da troca do inversor</h2>

<p>O equipamento que mais quebra em sistema solar residencial é o inversor — não a placa. Placa fotovoltaica tem 25 anos de garantia de performance (perde 0,5% por ano) e é praticamente impossível de quebrar fora de evento extremo. Inversor é eletrônica de potência que opera a 60°C-80°C várias horas por dia. Tem vida útil técnica e prazo de garantia que precisa entrar no cálculo.</p>

<p>Microinversor Apsystems DS3-D ou Hoymiles HMS-2000: 15 anos de garantia de troca por novo. Projetado pra durar 25 anos sem manutenção corretiva relevante. Não entra no payback como gasto.</p>

<p>Inversor string Fronius Primo ou SMA: 7 anos de garantia. Vida útil técnica entre 12 e 15 anos. Em sistema que vai durar 25 anos com a placa, precisa de uma troca no meio do caminho. Custo da troca em 2026: R$ 4.500 a R$ 7.000 para sistemas residenciais médios.</p>

<p>Inversor string genérico chinês (sem certificação INMETRO robusta): garantia oficial de 5 anos, vida útil real entre 6 e 10 anos. Troca no ano 7-9. Em sistema de 25 anos, pode precisar de duas trocas. Custo total das trocas em moeda futura: R$ 8.000 a R$ 14.000 cumulativos.</p>

<p>Vendedor de sistema barato raramente projeta essa troca no cálculo de payback. Quem inclui o gasto, ajusta o payback em 6 a 14 meses pra cima — dependendo da escolha do inversor.</p>

<aside class="ebook-quote" style="margin: 24px 0; padding: 20px; background: #fffbe6; border: 1px solid #f5d77f; border-radius: 6px;">
<p style="margin: 0 0 8px 0; font-weight: 600; color: #7a5a0a;">📖 Trecho do meu ebook — Capítulo "Comparar Orçamentos"</p>
<blockquote style="margin: 0 0 12px 0; font-style: italic; border-left: 3px solid #2d8659; padding-left: 12px;">
A pergunta certa pra fazer no orçamento não é "qual o payback?". É "qual o payback com troca de inversor projetada no ano 10?". Se o vendedor não souber responder, ele acabou de te entregar o orçamento sem o gasto que vai consumir 2 anos da tua economia.
</blockquote>
<a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=ebook_quote&amp;utm_campaign=article-028" style="display: inline-block; padding: 10px 18px; background: #2d8659; color: #fff; text-decoration: none; border-radius: 4px; font-weight: 600;">Quer o capítulo completo? Eu, Gerente Solar — R$97</a>
</aside>

<h2 id="ajuste-3-inflacao-tarifaria">Ajuste 3: inflação tarifária — o ajuste que joga a favor</h2>

<p>Esse é o único ajuste que melhora o payback em vez de piorar. E é o que o vendedor honesto efetivamente usa, em vez do otimismo dos outros três.</p>

<p>Tarifa elétrica brasileira sobe acima da inflação geral há quinze anos consecutivos. Entre 2010 e 2025, IPCA acumulou cerca de 95%; tarifa CPFL Paulista para baixa tensão B1 residencial acumulou cerca de 168%. Essa diferença anual média de 3 a 5 pontos percentuais é o vento a favor do solar: cada ano que passa, o kWh que tu deixou de pagar economiza mais reais do que economizava no ano anterior.</p>

<p>Aplicado ao payback, esse efeito tira algo entre 8 meses e 1 ano e 2 meses do prazo nominal — dependendo de quão agressivo for o reajuste no horizonte. Vendedor honesto inclui esse ajuste; vendedor desonesto também inclui esse, e <em>só</em> esse, ignorando os outros dois que jogam contra.</p>

<h2 id="ajuste-4-degradacao-real">Ajuste 4: degradação real das placas</h2>

<p>Placas fotovoltaicas comerciais perdem perto de 0,5% de produção por ano. Em 25 anos, a placa que produzia 580W em 2026 produzirá 510W em 2051 — perda cumulativa de 12%. Não muda o payback do primeiro horizonte (anos 1-6), mas tira economia no horizonte completo de 25 anos.</p>

<p>Pra payback puro, esse ajuste contribui com 2-3 meses a mais no prazo nominal. Pra ROI total (não payback), o impacto é maior — perto de R$ 12.000 a R$ 18.000 de economia que não acontece no fim do ciclo. Vendedor raramente menciona porque o cliente só pergunta sobre payback, não sobre ROI total.</p>

<h2 id="payback-honesto-em-2026">O payback honesto em 2026, calculado direito</h2>

<p>Sistema de 5 kWp em 2026 com microinversor Apsystems, sem troca projetada de inversor, conta de luz original de R$ 520/mês, Lei 14.300 com Fio B 60% em 2026, tarifa reajustando 8% ao ano, degradação 0,5%/ano:</p>

<p><strong>Payback nominal real: 5 anos e 4 meses.</strong></p>

<p>Mesmo sistema com inversor string Fronius (troca no ano 11 incluída): 5 anos e 11 meses. Com inversor string genérico (duas trocas projetadas até o ano 25): 6 anos e 4 meses pra fechar o payback simples, mas com ROI total cumulativo R$ 11.000 menor que a versão Apsystems.</p>

<p>Vendedor que te disse "3 anos" calculou compensação 100% (errado desde 2023), ignorou troca de inversor (otimismo barato), considerou tarifa subindo 4% (subiu 12% em 2024 no SP), e desprezou degradação. Os quatro ajustes juntos somam 2 a 3 anos de diferença entre o folder e a tua planilha de poupança em casa.</p>

<p>Solar continua valendo a pena em 2026. Não pelo payback de planilha do vendedor — pelo payback real de 5-7 anos seguido de 18-20 anos de conta perto de zero. É um excelente investimento residencial. Mas pra ser excelente, precisa ser calculado direito antes de assinar.</p>

<p style="margin-top: 32px; padding: 16px; background: #f6f8f7; border-radius: 6px; font-size: 0.95em;">
<strong>Se você tá com proposta solar na mesa</strong>, o ebook <a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=cta_final&amp;utm_campaign=article-028"><em>Eu, Gerente Solar</em></a> tem a planilha completa de payback honesto — Lei 14.300, troca de inversor, inflação tarifária, degradação. Calculada com os teus números reais. R$97 (ou 12x R$10,03).
</p>',
  'energia-solar-residencial',
  '["payback solar","Lei 14.300","Fio B progressivo","ROI solar 25 anos","troca de inversor","inflacao tarifaria","174 instalacoes","aula 48"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-16T10:05:00.000Z',
  '2026-05-16T10:05:00.000Z',
  '2026-05-16T10:05:00.000Z',
  0,
  NULL,
  NULL,
  NULL,
  6,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL
);
