-- =============================================================================
-- ARTICLE-029 — Ensaio v2.8 — Energia solar pra produtor rural
-- Fonte: Aula 26 (https://www.youtube.com/watch?v=jWRUMB0q7A8)
-- Estrutura: EXPERIÊNCIA (g) — caso real propriedade rural
-- Hook: ANEDOTA CONCRETA (#1) — sítio Mogi Mirim 2024
-- Tese: Solar rural não é solar urbano em telhado maior. São 3 diferenças críticas
--       (tarifa, padrão de consumo, regulamentação BNDES) que mudam tudo.
-- Cardápio mensal: 3ª EXPERIÊNCIA de maio
-- Vish gate: GO — nicho desatendido (Portal Solar tem 1 artigo genérico)
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
  '9E2EF660F167SJW8W5TGWT3V7H',
  'energia-solar-produtor-rural-3-diferencas-do-residencial-urbano',
  'Energia solar pra produtor rural: 3 diferenças do residencial urbano',
  'Solar produtor rural 2026: tarifa, consumo, BNDES Pronaf',
  'Solar rural não é solar urbano em telhado maior. Engenheira de 174 instalações explica as 3 diferenças que mudam o dimensionamento, o payback e o financiamento.',
  'Em 2024 fiz orçamento pra um sítio em Mogi Mirim que usava o cálculo padrão de solar residencial urbano. Sairia 35% maior que o necessário. Solar pra produtor rural tem três diferenças que mudam tudo. Esse texto explica cada uma.',
  '<p>Em 2024 atendi um pequeno produtor rural em Mogi Mirim que tinha recebido três orçamentos de energia solar usando o mesmo cálculo que se usa pra casa em centro urbano. Os três sairiam 35% maiores que o necessário pra propriedade dele, e dois deles ignoravam que ele se enquadrava no Pronaf Eco — linha de crédito com juros bem abaixo do bancário comum. O sistema final que dimensionei pra ele custou R$ 21.500 contra orçamento médio dos outros três de R$ 33.800. Mesma economia mensal. Mesma autonomia. Diferença no cálculo, não no produto.</p>

<p>Solar rural não é solar urbano em telhado maior. Tem três diferenças críticas que o vendedor que tratou da casa do teu vizinho não conhece, e que mudam o dimensionamento, o payback e principalmente o financiamento. Essas três diferenças são o tema deste post.</p>

<h2 id="diferenca-1-tarifa">Diferença 1: a tarifa rural é estrutura completamente diferente</h2>

<p>Conta de luz de propriedade rural não vem como B1 (residencial urbano). Vem como <strong>Subgrupo B2 — Rural</strong>, que tem três sub-tarifas distintas: rural irrigante, cooperativa de eletrificação rural, e rural geral. As diferenças entre elas são significativas.</p>

<p>B2 rural geral tem desconto cumulativo de 30% sobre o B1 residencial — desconto histórico previsto na Lei 10.438/2002, vigente desde 2003. O kWh consumido na propriedade rural sai 30% mais barato que a mesma energia consumida em apartamento urbano.</p>

<p>Aqui está a primeira pegadinha do payback do orçamento padrão: se o vendedor calculou usando tarifa B1 (residencial urbana) — porque é o template do PDF dele — projetou economia 30% maior que a real. Em sistema com payback nominal de 4 anos, isso vira payback real de 5 anos e 2 meses. Não é fim de mundo, mas é mais de um ano de diferença que ninguém te contou.</p>

<p>Pra B2 rural irrigante (propriedades com irrigação significativa), o desconto é ainda maior: 70% durante a estação seca, em horário noturno. Cliente que faz irrigação noturna paga uns 30% do kWh que paga residência urbana. Solar dimensionado pra B2 irrigante precisa considerar essa especificidade — caso contrário, o sistema fica superdimensionado pro padrão de consumo real.</p>

<h2 id="diferenca-2-padrao-de-consumo">Diferença 2: o padrão de consumo rural é sazonal e diurno</h2>

<p>Residência urbana consome energia em pico noturno (18h-22h) — banho, jantar, TV, ar-condicionado. Sistema solar gera de dia, quando a casa consome menos, então grande parte vira crédito que abate à noite. É a lógica padrão da geração distribuída urbana.</p>

<p>Propriedade rural inverte isso. Bomba de irrigação, motor de ordenhadeira, ventilação de aviário, resfriador de leite — todos operam em horário diurno, justamente quando o sol está no auge. Casamento entre geração e consumo é maior. Significa que <em>menos</em> energia precisa ser injetada na rede e compensada à noite — e isso muda o efeito da Lei 14.300 sobre o payback rural.</p>

<p>Lembra que a Lei 14.300 cobra Fio B progressivamente sobre energia <em>compensada</em> (a que volta da rede), não sobre energia consumida <em>direto</em> da placa? Em propriedade urbana, ~60-70% da energia da placa vai pra rede e volta compensada — então 60-70% sofre o Fio B. Em propriedade rural com consumo diurno alto, 30-50% vai pra rede — então só essa parte sofre Fio B.</p>

<p>Resultado prático: Lei 14.300 dói menos no payback rural que no urbano. Vendedor que aplicou o mesmo desconto que aplicaria pra cliente residencial está perdendo de mostrar pra ti que a tua conta rural se beneficia mais que a do vizinho urbano. É argumento de venda que ele mesmo não fez — porque desconhece.</p>

<aside class="ebook-quote" style="margin: 24px 0; padding: 20px; background: #fffbe6; border: 1px solid #f5d77f; border-radius: 6px;">
<p style="margin: 0 0 8px 0; font-weight: 600; color: #7a5a0a;">📖 Trecho do meu ebook — Bônus "Conferência de Kit Solar"</p>
<blockquote style="margin: 0 0 12px 0; font-style: italic; border-left: 3px solid #2d8659; padding-left: 12px;">
Dimensionamento solar começa em puxar 12 meses de conta de luz e olhar a curva de consumo, não no software de simulação do vendedor. Se ele não pediu pra ver tuas contas antes de orçar, ele está orçando um sistema que vai servir pra alguém que não é tu.
</blockquote>
<a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=ebook_quote&amp;utm_campaign=article-029" style="display: inline-block; padding: 10px 18px; background: #2d8659; color: #fff; text-decoration: none; border-radius: 4px; font-weight: 600;">Quer o capítulo completo? Eu, Gerente Solar — R$97</a>
</aside>

<h2 id="diferenca-3-financiamento">Diferença 3: financiamento Pronaf Eco e BNDES Eficiência Energética</h2>

<p>Aqui é onde a diferença vira dinheiro grosso. Pequeno e médio produtor rural tem acesso a linhas de crédito específicas que não existem pro residencial urbano.</p>

<p><strong>Pronaf Eco</strong> (Programa Nacional de Fortalecimento da Agricultura Familiar — modalidade ambiental) financia projetos de energia solar pra DAP/CAF ativos com taxa entre 0,5% e 1,5% ao ano. Compare com financiamento solar residencial bancário em 2026: 1,4% a 2,3% ao <em>mês</em>. A diferença é de uma ordem de grandeza. Quem se enquadra no Pronaf e financia solar paga praticamente o sistema seco — financiamento corrói pouco do ganho.</p>

<p><strong>BNDES Finame</strong> e linha de eficiência energética têm taxas entre 9% e 13% ao ano (variável conforme TLP) — também muito abaixo do bancário comum, embora acima do Pronaf Eco. Pra produtor maior que não se enquadra em Pronaf, é a alternativa adequada.</p>

<p>Atendi em 2024 outro caso, uma fazenda pequena em Itu, em que o produtor já tinha conseguido fazer cotação de financiamento solar via banco comercial de relacionamento. Taxa: 1,8% ao mês. Aprovou. Antes de assinar, perguntei se ele tinha DAP ativa — tinha. Pedi pra ele falar com o agente Pronaf da região. Em três semanas conseguiu o mesmo valor a 1,2% ao ano. Diferença na parcela: 78%. Sistema que pagaria em 60 parcelas de R$ 510 passou pra 60 parcelas de R$ 305. Em 5 anos, R$ 12.300 que ficaram com ele e não com o banco.</p>

<p>Vendedor de solar urbano normalmente não conhece essas linhas. Pergunta de teste: peça pro orçamento solar incluir simulação Pronaf Eco e BNDES Finame. Se ele responder "não trabalhamos com isso, é só financiamento direto do banco parceiro" — tu acaba de medir o quanto ele entende do mercado rural. Próximo orçamento.</p>

<h2 id="o-que-fazer-agora">O que fazer agora se tu é produtor rural</h2>

<p>Antes de pedir orçamento solar, três coisas: puxa 12 meses de conta de luz com identificação da sub-tarifa B2 (rural irrigante, geral, ou cooperativa); checa se tens DAP/CAF ativa pra Pronaf; e se a propriedade tem irrigação significativa ou outros equipamentos diurnos. Esses três dados na mão e o vendedor não tem como te entregar simulação genérica.</p>

<p>O cliente em Mogi Mirim que mencionei no começo ficou com sistema de 4,8 kWp em vez de 7,5 kWp que os outros orçamentos propunham. Economia mensal idêntica (porque o consumo dele é mais diurno do que parece pra um cálculo padrão), payback em 4 anos e 2 meses (porque financiou via Pronaf), ROI total 25 anos em torno de R$ 95.000. Os outros orçamentos teriam sido sistema maior, financiamento mais caro, ROI menor. Mesma cabeça, mesma economia, decisão diferente baseada em saber o que perguntar.</p>

<p style="margin-top: 32px; padding: 16px; background: #f6f8f7; border-radius: 6px; font-size: 0.95em;">
<strong>Se tu é produtor rural avaliando solar</strong>, o ebook <a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=cta_final&amp;utm_campaign=article-029"><em>Eu, Gerente Solar</em></a> tem capítulo dedicado ao dimensionamento que considera sub-tarifa rural e perfil diurno — além das 12 perguntas que separam empresa rural-competente de empresa que vai te aplicar o template urbano. R$97 (ou 12x R$10,03).
</p>',
  'energia-solar-residencial',
  '["solar produtor rural","Subgrupo B2","tarifa rural irrigante","Pronaf Eco","BNDES Finame","174 instalacoes","aula 26"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-16T10:10:00.000Z',
  '2026-05-16T10:10:00.000Z',
  '2026-05-16T10:10:00.000Z',
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
