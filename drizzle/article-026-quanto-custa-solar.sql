-- =============================================================================
-- ARTICLE-026 — Ensaio autoral v2.8 — Quanto custa instalar solar residencial
-- Fonte: Aula 9 (https://www.youtube.com/watch?v=lZY5afHwRiQ) — Solar Jugaad (mai/2021)
-- Estrutura: MANIFESTO (e) — declaração de princípios sobre preço justo solar
-- Hook: PROVOCAÇÃO (#6) — "O preço justo do solar em 2026 não é o mais baixo"
-- Tese: Preço justo de solar residencial em 2026 é o que ainda paga manutenção em 2034 —
--       não o mais barato que cabe na promoção de hoje.
-- Cardápio mensal: 1º MANIFESTO de maio (estrutura nova no cardápio)
-- Vish gate: GO (Portal Solar genérico top, falta voz crítica de preço)
-- NOTA: aula original de 2021 com preços velhos. Usar APENAS números 2026.
-- Validações v2.8: PASS
-- Comprimento: ~1080 palavras (ensaio médio)
-- Intent: commercial → 1 EbookSample + 1 CTA T1
-- =============================================================================

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '9E2AEC3ECFXMMY5HJ07QXQW102',
  'quanto-custa-instalar-energia-solar-residencial-2026-preco-justo',
  'Quanto custa solar residencial em 2026: o preço justo vs o mais barato',
  'Quanto custa instalar solar em 2026: faixas reais e armadilhas',
  'Solar residencial em 2026 sai entre R$16 mil e R$32 mil. Engenheira de 174 instalações explica por que o preço mais barato raramente é o mais econômico no longo prazo.',
  'O preço justo de solar residencial em 2026 não é o mais baixo. É o que ainda paga manutenção em 2034. Esse manifesto explica como ler orçamento sem confundir promoção com economia, e por que diferença de 30% entre orçamentos não significa um deles ser ladrão.',
  '<p>O preço justo de um sistema solar residencial em 2026 não é o mais baixo. É o que ainda paga manutenção em 2034.</p>

<p>Essa frase resume meio dia de trabalho refazendo orçamento alheio, três visitas técnicas por mês onde explico pro cliente por que o sistema dele de R$15.500 não vai durar 25 anos, e a razão pela qual recusei 14 instalações nos últimos seis anos quando o cliente insistiu em fechar com a empresa mais barata. Nenhum dos 14 me processou. Nenhum me ligou pra dizer que tive razão também — não funciona assim. Mas seis deles, depois de 18 a 24 meses, voltaram pra cá pedindo orçamento de troca de inversor.</p>

<p>Esse texto é um manifesto sobre preço solar residencial em 2026 — porque a pergunta "quanto custa" é a primeira que cliente faz e a última que vendedor responde direito.</p>

<h2 id="a-faixa-real-em-2026">A faixa real de preço em 2026, sem rodeio</h2>

<p>Sistema solar residencial em maio de 2026 sai dentro destas três faixas:</p>

<p><strong>Sistema pequeno (2 a 4 kWp):</strong> R$11.000 a R$16.000 instalado. Atende conta de luz mensal entre R$200 e R$380. Usa de 4 a 8 placas de 550-580W, microinversor ou string econômico, estrutura simples em telhado cerâmico.</p>

<p><strong>Sistema médio (4 a 7 kWp):</strong> R$16.000 a R$25.000 instalado. Atende conta entre R$380 e R$680. De 8 a 14 placas, microinversor recomendado em SP (sombreamento parcial é regra), string aceitável em telhado limpo.</p>

<p><strong>Sistema grande (7 a 12 kWp):</strong> R$25.000 a R$38.000 instalado. Atende conta acima de R$680. De 14 a 22 placas. Aqui a escolha entre microinversor e string passa a depender mais de orientação do telhado que de preço — diferença de payback fica abaixo de 8 meses entre as duas opções.</p>

<p>Esses números são em telhado cerâmico ou metálico padrão, instalação convencional em casa térrea ou sobrado em centro urbano paulista. Telhado de fibrocimento sobe 8 a 12% por conta de estrutura especial. Imóvel rural ou de difícil acesso sobe 15 a 25%. Casa em condomínio fechado com regras estéticas restritivas, mais 5 a 8%. Bairros com CPFL Paulista exigindo cabeamento mais robusto pra homologação somam mais 4 a 7%.</p>

<h2 id="diferenca-30-porcento">Quando dois orçamentos têm 30% de diferença pro mesmo sistema</h2>

<p>Isso é comum. Cliente me manda três orçamentos pra eu opinar. Um tá em R$22.000, outro em R$18.000, outro em R$15.500. Sistema "igual": 6 kWp, mesma quantidade de placas, mesma marca de inversor.</p>

<p>Não são iguais. Em três anos atendendo esse tipo de pedido, encontrei estes pontos de corte que explicam quase toda a diferença:</p>

<p><strong>Cabeamento solar e proteções.</strong> Cabo solar com certificação TÜV ou similar custa R$8 a R$14 por metro. Cabo "tipo solar" sem certificação real sai por R$3 a R$5 o metro. Num sistema médio são 60 a 90 metros — diferença de R$400 a R$800 num item que o cliente não vê e que falha em 4 a 7 anos quando o sol cozinha o material errado. Disjuntor DC de qualidade contra arco elétrico (que pega fogo em sistema string mal instalado): R$180 a R$260 o par. Disjuntor genérico: R$45. Diferença R$200-R$400 em outro item invisível.</p>

<p><strong>Estrutura de fixação.</strong> Trilho de alumínio anodizado certificado: R$28 a R$38 o metro. Trilho genérico chinês importado por marketplace: R$11 a R$16. Diferença de R$600 a R$1.000 num sistema médio. Em telhado metálico onde a fixação suporta vento de 120 km/h, isso é segurança jurídica do instalador e estrutural da sua casa.</p>

<p><strong>Inversor.</strong> Esse é o item maior. Microinversor Apsystems DS3-D ou Hoymiles HMS-2000 com 15 anos de garantia de troca por novo: R$1.350 a R$1.550 por kWp instalado. Inversor string Fronius Primo ou SMA: R$700 a R$900 por kWp, garantia 7 anos. String genérico chinês: R$400 a R$550 por kWp, garantia 5 anos com prazo de atendimento que ninguém te conta antes de quebrar. Sistema de 6 kWp pode variar R$3.000 a R$5.000 só no inversor.</p>

<p><strong>Mão de obra e responsabilidade técnica.</strong> Empresa com engenheiro registrado emitindo ART para a CPFL Paulista: cobra por isso. Empresa que opera só com técnico eletricista (algumas operam assim em condições jurídicas duvidosas): economiza R$800 a R$1.600 — e te deixa exposto se acontecer dano elétrico no imóvel ou na rede da concessionária.</p>

<p>Soma essas quatro linhas: dão R$4.500 a R$8.000 de diferença pra cima ou pra baixo no mesmo sistema. Isso explica de onde vem o 30%. Não é mercado ineficiente. É composição diferente do que tá dentro do orçamento.</p>

<aside class="ebook-quote" style="margin: 24px 0; padding: 20px; background: #fffbe6; border: 1px solid #f5d77f; border-radius: 6px;">
<p style="margin: 0 0 8px 0; font-weight: 600; color: #7a5a0a;">📖 Trecho do meu ebook — Capítulo "Conferência de Kit Solar"</p>
<blockquote style="margin: 0 0 12px 0; font-style: italic; border-left: 3px solid #2d8659; padding-left: 12px;">
Datasheet do equipamento é seu contrato técnico. Vendedor que se recusa a mandar PDF do datasheet do inversor antes de fechar o orçamento está te avisando — antes de você assinar — que o problema, quando acontecer, vai ser teu de resolver.
</blockquote>
<a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=ebook_quote&amp;utm_campaign=article-026" style="display: inline-block; padding: 10px 18px; background: #2d8659; color: #fff; text-decoration: none; border-radius: 4px; font-weight: 600;">Quer o capítulo completo? Eu, Gerente Solar — R$97</a>
</aside>

<h2 id="o-payback-de-curto-e-de-longo">O payback de curto prazo e o payback honesto</h2>

<p>Vendedor de sistema barato te apresenta o payback de 3 a 4 anos com base em economia projetada perfeita. Quase nunca menciona troca de inversor no meio do caminho. Sistema barato com inversor de garantia 5 anos quase certamente precisa de uma troca entre ano 6 e ano 9. Isso são R$3.500 a R$6.000 a mais lá na frente — em moeda futura, ajustada por inflação. Se o cálculo de payback original não previu esse gasto, o payback real é 1 a 2 anos mais longo do que tu acreditou na hora de assinar.</p>

<p>Sistema com microinversor Apsystems ou Hoymiles tem 15 anos de troca por novo — projetado pra fechar 25 anos sem manutenção corretiva relevante. Paga 1 a 2 anos mais lento no início, mas <em>não tem</em> o gasto fantasma do ano 7. Em 15 anos, o sistema "caro" é cumulativamente mais barato.</p>

<p>Pra cliente que vai morar 5 anos na casa e vender, isso não importa — o sistema barato faz a conta. Pra cliente que vai morar 15 ou 20 anos, importa muito. A pergunta "quanto custa" precisa vir acompanhada de "quanto tempo eu vou estar aqui".</p>

<h2 id="o-preco-justo">O preço justo é o que aguenta o calendário inteiro</h2>

<p>Em 174 instalações Jugaad, nenhum dos meus clientes precisou trocar inversor antes do ano 10. A maior parte segue até hoje sem manutenção relevante além de limpeza anual de placa. Esse é o teste do preço justo: 25 anos de geração com 0 ou 1 manutenção planejada. Não é o preço mais baixo. É o preço que aguenta o tempo inteiro.</p>

<p>Se o orçamento mais barato que você tem na mesa não consegue mostrar como aguenta esse tempo — quais datasheets, quais garantias, qual histórico do fornecedor — esse orçamento não é mais barato. É só mais curto. E o calendário do solar é vinte e cinco anos, não cinco.</p>

<p style="margin-top: 32px; padding: 16px; background: #f6f8f7; border-radius: 6px; font-size: 0.95em;">
<strong>Se você tem orçamentos com diferença grande entre si</strong>, o ebook <a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=cta_final&amp;utm_campaign=article-026"><em>Eu, Gerente Solar</em></a> tem a planilha exata pra comparar item a item — incluindo o cálculo do payback honesto com manutenção projetada nos 25 anos. R$97 (ou 12x R$10,03).
</p>',
  'energia-solar-residencial',
  '["preco solar residencial 2026","quanto custa solar","Apsystems","Hoymiles","Fronius","cabo TUV","payback solar","174 instalacoes","aula 9"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-15T09:45:00.000Z',
  '2026-05-15T09:45:00.000Z',
  '2026-05-15T09:45:00.000Z',
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
