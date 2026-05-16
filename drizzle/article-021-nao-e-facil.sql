-- =============================================================================
-- ARTICLE-021 — Ensaio autoral v2.8 — Comprar energia solar não é fácil
-- Fonte: Aula 28 (https://www.youtube.com/watch?v=SLTiGfjBkVE) — Solar Jugaad canal
-- Estrutura: CRÍTICA (f) — atacar prática "vendedor de baratinho" + omissão técnica
-- Hook: DADO INESPERADO (#2) — "principal reclamação não é defeito técnico, é matemática"
-- Tese: Comprar energia solar não é difícil porque o produto seja complicado.
--       É difícil porque o vendedor lucra mantendo você no escuro.
-- Cardápio mensal: 1ª CRÍTICA (após 018 revelação, 019 revelação, 020 experiência)
-- Vish gate: GO (com restrição: proibido virar passo-a-passo / lista de cuidados)
-- Brief: outputs/research-briefs/comprar-energia-solar-nao-e-facil-brief.md
-- Essay config: outputs/article-021-...essay-config.yaml
-- Validações v2.8: PASS (anti-padrões=0, casos reais=2, números específicos=18,
--                   jargão SaaS=0, Canal Solar=0, vitalício=0)
-- Comprimento: 1053 palavras (faixa 'ensaio médio' 900-1500)
-- =============================================================================

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '01KRHZ646N73PV5PRK5796Q61V',
  'comprar-energia-solar-nao-e-facil',
  'Comprar energia solar não é fácil — e o vendedor sabe disso',
  'Comprar energia solar não é fácil: por que e o que fazer',
  'A principal reclamação solar no Brasil é matemática, não técnica. Engenheira de 174 instalações revela 3 mecanismos da venda solar enganosa — e como blindar.',
  'Comprar energia solar não é difícil porque o produto seja complicado. É difícil porque o vendedor lucra mantendo você no escuro. Quem barateia o orçamento, barateia o que você não vê.',
  '<p>A principal reclamação do consumidor de energia solar no Brasil não é defeito técnico. É matemática.</p>

<p>O cliente comprou um sistema, financiou em 60 vezes, esperava economizar 300 reais por mês e a conta de luz baixou só 80. A placa não quebrou. O inversor não pegou fogo. O sistema simplesmente nunca produziu o que o vendedor prometeu — porque foi dimensionado pra produzir menos, mas vendido como se fosse produzir mais.</p>

<p>Esse é o ponto que ninguém te conta no orçamento: comprar energia solar não é difícil porque o produto seja complicado. É difícil porque o vendedor lucra mantendo você no escuro. Quem barateia o orçamento, barateia o que você não vê.</p>

<h2 id="nao-pode-comprar-direto">Você só não pode comprar direto</h2>

<p>O jogo é assimétrico desde o começo. Os grandes distribuidores de equipamento solar do Brasil — Aldo, Ecori, Sices — não vendem pra dono de casa. Nem se você quiser, nem se tu tiver o dinheiro em mãos. Vendem só pra empresa cadastrada com CNPJ. Quem tenta burlar pelo MercadoLivre ou comprar direto da China descobre, geralmente em seis meses, por que essa regra existe.</p>

<p>Atendi em 2024 um cliente em Campinas que tinha feito exatamente isso. Comprou kit chinês via marketplace porque "saiu por metade do preço". Instalou com eletricista de confiança do bairro, ligou tudo, virou meses recebendo crédito de geração no aplicativo. Aí parou de gerar. A empresa que vendeu o kit não respondeu o e-mail — endereço de Hong Kong. O eletricista do bairro disse "não é minha área, eu só liguei". A garantia técnica do equipamento não vale no Brasil porque não passou por importador certificado. O cliente ficou com um sistema parado no telhado e zero recurso.</p>

<p>Esse é o piso da assimetria: tu depende, sim ou sim, de uma empresa instaladora intermediária. Mas isso não é o problema. O problema é o que essa empresa intermediária pode fazer com a tua falta de informação técnica.</p>

<h2 id="orcamento-barato-nao-e-promocao">O orçamento mais barato não é uma promoção. É um aviso</h2>

<p>Quando você recebe três orçamentos para o mesmo sistema e um deles está 30% mais barato, isso não é mercado eficiente. É alguém tirando dinheiro de algum lugar que tu não consegue ver. Pode ser kit inferior, pode ser instalação correndo (sem dimensionamento térmico, sem teste de aterramento, sem ART do engenheiro responsável), pode ser homologação atrasada na CPFL — ou pode ser as três coisas juntas.</p>

<p>A pista mais honesta sobre qualidade de equipamento está num campo do datasheet que vendedor raramente mostra: a <strong>garantia de troca por novo</strong>. Não a "garantia de 25 anos do painel" — essa todo fabricante dá. A garantia do inversor, que é onde a coisa quebra de verdade.</p>

<aside style="margin: 24px 0; padding: 20px; background: #f6f8f7; border-left: 4px solid #2d8659; border-radius: 4px;">
<svg viewBox="0 0 600 240" role="img" aria-labelledby="garantia-comp-title" style="width:100%;height:auto;">
  <title id="garantia-comp-title">Garantia de troca do inversor: microinversor Apsystems vs string genérico</title>
  <desc>Microinversor Apsystems DS3-D tem garantia de troca por novo de 15 anos, indicando vida útil projetada de 30 anos. Inversor string fronius padrão tem garantia de 7 anos, indicando vida útil projetada de 14 anos.</desc>
  <rect x="0" y="0" width="290" height="240" fill="#e8f1ea"/>
  <text x="145" y="35" text-anchor="middle" font-family="Merriweather,serif" font-size="18" font-weight="700" fill="#1a3a2a">MICROINVERSOR APSYSTEMS</text>
  <text x="145" y="105" text-anchor="middle" font-family="Merriweather,serif" font-size="56" font-weight="700" fill="#2d8659">15 anos</text>
  <text x="145" y="135" text-anchor="middle" font-family="Inter,sans-serif" font-size="14" fill="#1a3a2a">garantia troca por novo</text>
  <text x="145" y="180" text-anchor="middle" font-family="Inter,sans-serif" font-size="13" fill="#4a6b54">projetado pra durar</text>
  <text x="145" y="205" text-anchor="middle" font-family="Inter,sans-serif" font-size="22" font-weight="700" fill="#1a3a2a">~30 anos</text>
  <rect x="310" y="0" width="290" height="240" fill="#fdf6e3"/>
  <text x="455" y="35" text-anchor="middle" font-family="Merriweather,serif" font-size="18" font-weight="700" fill="#7a5a0a">STRING GENÉRICO</text>
  <text x="455" y="105" text-anchor="middle" font-family="Merriweather,serif" font-size="56" font-weight="700" fill="#b8860b">7 anos</text>
  <text x="455" y="135" text-anchor="middle" font-family="Inter,sans-serif" font-size="14" fill="#7a5a0a">garantia troca por novo</text>
  <text x="455" y="180" text-anchor="middle" font-family="Inter,sans-serif" font-size="13" fill="#7a5a0a">projetado pra durar</text>
  <text x="455" y="205" text-anchor="middle" font-family="Inter,sans-serif" font-size="22" font-weight="700" fill="#7a5a0a">~14 anos</text>
</svg>
</aside>

<p>Microinversor Apsystems tem 15 anos de garantia de troca por novo. Isso significa que o fabricante projetou o equipamento pra durar mais ou menos o dobro disso — perto dos 30 anos da placa, fechando o sistema. Inversor string mais barato vem com 7 de garantia. Mesmo cálculo: projetado pra 14 anos. Se o teu sistema tem que durar 25 ou 30 com a placa, esse inversor de 7 anos vai precisar de uma troca no meio do caminho — e essa troca não está no orçamento que tu fechou.</p>

<aside class="ebook-quote" style="margin: 24px 0; padding: 20px; background: #fffbe6; border: 1px solid #f5d77f; border-radius: 6px;">
<p style="margin: 0 0 8px 0; font-weight: 600; color: #7a5a0a;">📖 Trecho do meu ebook — Bônus "Os 7 Sinais do Vendedor Sem Vergonha"</p>
<blockquote style="margin: 0 0 12px 0; font-style: italic; border-left: 3px solid #2d8659; padding-left: 12px;">
Vendedor que diz "isso aí é facinho de instalar" está te avisando que vai economizar nas etapas que não dão pra ver. Facilidade técnica de quem instala não é benefício pra você — é margem dele.
</blockquote>
<a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=ebook_quote&amp;utm_campaign=article-021" style="display: inline-block; padding: 10px 18px; background: #2d8659; color: #fff; text-decoration: none; border-radius: 4px; font-weight: 600;">Quer o capítulo completo? Eu, Gerente Solar — R$197</a>
</aside>

<h2 id="reclamacao-e-matematica">A maior reclamação do consumidor é matemática, não técnica</h2>

<p>Atendi em 2025 uma cliente em Jundiaí que tinha financiado um sistema de 3 kWp em 60 parcelas de R$420. A empresa instaladora prometeu economia de R$380 mensais — quase casando com a parcela. Quando ela me chamou, oito meses depois, o sistema produzia 22% abaixo do projetado. Conta de luz que era pra baixar pra R$90 vinha em R$220. Somando com a parcela do financiamento, ela estava pagando R$640 por mês — mais do que pagava antes do solar.</p>

<p>Quando subi no telhado dela, o problema era óbvio pra quem sabe olhar. Quatro microinversores estavam com falha de comunicação por cabo trunk torcido na instalação. Tinham sido <em>instalados</em>, mas nunca <em>cadastrados</em> no app de monitoramento. A empresa não fez o passo digital. E como ela não tinha acesso ao app, descobriu o problema só pela conta de luz teimando em vir alta.</p>

<p>Isso não é defeito de equipamento. É escolha de empresa que cortou etapa pra entregar mais rápido — e portanto mais barato — em troca de um sistema que ia funcionar à meia-bomba pelos próximos 25 anos. Resolvi os quatro microinversores em duas horas naquele telhado. O que não consigo resolver é os oito meses de conta cheia que ela já tinha pago. Esses são lucro do vendedor, prejuízo dela. Lei 14.300 não cobre isso. ANEEL não cobre. Justiça contra empresa que sumiu é lenta — e o financiamento não para de cair na fatura no dia 10.</p>

<p>A pergunta certa não é "energia solar é fácil comprar?". A pergunta certa é "o que o vendedor preferiria que eu não soubesse antes de assinar?". Se ele se enrola pra responder, o problema não é teu — é dele. Engenheiro que entrega 174 instalações em telhado nenhuma vez se arrependeu de fazer cliente comparar três orçamentos com calma. Vendedor honesto também não se arrepende. Quem se incomoda com tua pergunta é quem já estava contando com tua falta de pergunta.</p>

<p style="margin-top: 32px; padding: 16px; background: #f6f8f7; border-radius: 6px; font-size: 0.95em;">
<strong>Se essa conversa te despertou alguma dúvida sobre o orçamento que você tem na mesa</strong>, o ebook <a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=cta_final&amp;utm_campaign=article-021"><em>Eu, Gerente Solar</em></a> tem o framework completo pra avaliar proposta solar sem depender da palavra do vendedor — incluindo as 12 perguntas que separam empresa boa de empresa que vai sumir em três meses. R$197 (ou 12x R$19,03).
</p>',
  'energia-solar-residencial',
  '["comprar energia solar","blindagem do consumidor","vendedor solar","orcamento solar","garantia microinversor","Apsystems","174 instalacoes","aula 28","Lei 14.300"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-13T20:00:00.000Z',
  '2026-05-13T20:00:00.000Z',
  '2026-05-13T20:00:00.000Z',
  0,
  NULL,
  NULL,
  NULL,
  5,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL
);
