-- =============================================================================
-- ARTICLE-024 — Ensaio autoral v2.8 — ICMS sobre energia solar
-- Fonte: Aula 69 (https://www.youtube.com/watch?v=jzQVW5enUoo) — Solar Jugaad
-- Estrutura: PROVOCAÇÃO (a) — tese contraintuitiva, inverter senso comum
-- Hook: PROVOCAÇÃO direta (#6) — "Você está pagando ICMS sobre energia que sua casa produziu"
-- Tese: Isenção ICMS solar no Brasil é colcha de retalhos de 27 estados, 15 com isenção,
--       12 sem — e a Reforma Tributária pode mudar tudo de novo em 2027.
-- Cardápio mensal: 1ª PROVOCAÇÃO de maio (preenche cardápio faltante)
-- Vish gate: GO (Portal Solar + ABSOLAR top SERP, falta voz crítica)
-- Anti-canibalização: vs article-006 (Lei 14.300 federal). ICMS é estadual, camada diferente.
-- Validações v2.8: PASS
-- Comprimento: ~1020 palavras (ensaio médio)
-- Intent: informational → preset CTA mínimo
-- =============================================================================

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '9E2AEC3ECD20X3WKYVQE4ZEFXW',
  'icms-energia-solar-quando-voce-paga-imposto-sobre-energia-que-nem-comprou',
  'ICMS solar: você paga imposto sobre energia que sua casa produziu',
  'ICMS energia solar: quem paga, quem não paga, quem pode pagar de novo',
  'Quinze estados isentam ICMS sobre solar autoconsumido. Doze cobram. Reforma Tributária pode mudar tudo em 2027. Engenheira explica em que CEP você está exposto.',
  'Isenção de ICMS sobre energia solar autoconsumida no Brasil é colcha de retalhos. Quinze estados não cobram. Doze cobram. A Reforma Tributária deve consolidar — pra cima ou pra baixo, ninguém ainda sabe. Aqui está como descobrir em que lado tu mora.',
  '<p>Talvez você esteja pagando ICMS sobre energia elétrica que sua casa produziu, injetou na rede da concessionária e depois compensou. Energia que nunca virou mercadoria, nunca circulou comercialmente, nunca foi vendida pra ninguém. ICMS — Imposto sobre <em>Circulação</em> de Mercadorias e Serviços — sobre algo que não circulou.</p>

<p>Depende de em qual dos 27 estados brasileiros tu mora. Em 15 deles a isenção existe e a sua conta não traz essa cobrança no item "energia compensada". Em 12, traz — e a cada 100 kWh que teu telhado gerou e injetou na rede, você paga ICMS sobre a tarifa cheia, como se tivesse comprado da Cemig, da Coelba, da Energisa, do que for.</p>

<p>Esse é o paradoxo silencioso do sistema brasileiro de geração distribuída: a Lei 14.300/2022 é federal e vale igual pra todo mundo. O ICMS é estadual e vale como cada governador decide. O Convênio CONFAZ ICMS 16/2015 autorizou os estados a isentarem, mas autorizar não é obrigar. Quem isentou, isentou. Quem não, continua cobrando. E você descobre se está nos 15 ou nos 12 indo na sua conta de luz e procurando a linha "energia compensada (TUSD/TE)".</p>

<h2 id="por-que-essa-colcha-de-retalhos">Por que existe essa colcha de retalhos em primeiro lugar</h2>

<p>O ICMS é fonte principal de arrecadação de qualquer governo estadual brasileiro. Em estados onde a energia elétrica responde por 12% a 18% da receita de ICMS, abrir mão dessa parte é decisão política grande. Os governos que isentaram o autoconsumo solar fizeram aposta — perder receita curto prazo em troca de atrair mercado de equipamentos, instaladores, empregos.</p>

<p>São Paulo isentou e em 2025 passou dos 5 GW de geração distribuída — primeiro estado a chegar nesse número. Ceará isentou cedo, mesma lógica. Goiás, Pernambuco, Mato Grosso, Bahia, Maranhão, Distrito Federal, Espírito Santo, Mato Grosso do Sul, todos no grupo dos 15. O Sul brasileiro também — Paraná, Santa Catarina, Rio Grande do Sul. Total: cobre uns 150 milhões de habitantes, perto de 75% da população. Os números variam levemente porque alguns estados isentaram com prazo (SP, por exemplo, isenção válida até dezembro de 2026 pelo Decreto 69.827/2024 — vai ter que renovar, e a renovação não é automática).</p>

<p>O grupo dos 12 que continuam cobrando inclui notavelmente Amazonas, Pará, Tocantins, Acre, Roraima — Norte amazônico — e Sergipe, Alagoas, Paraíba, Piauí, Rio Grande do Norte parcialmente. Quem mora num desses estados e instalou solar paga ICMS sobre o que injetou na rede e foi compensado. Não sobre o que consumiu da rede direto (essa cobrança é igual em todo lugar) — sobre a parte compensada, especificamente.</p>

<h2 id="o-impacto-no-payback">O impacto real no payback do sistema</h2>

<p>Diferença entre estar isento e não estar isento tem peso. Considere um sistema de 5 kWp residencial gerando uns 600 kWh/mês, do qual perto de 60% volta pra rede durante o dia e é compensado à noite. Em estado com isenção, esses 360 kWh compensados não levam ICMS — só taxa mínima de disponibilidade. Em estado sem isenção, levam ICMS sobre tarifa cheia, geralmente entre 18% e 25% do valor da energia.</p>

<p>Na prática: na média, isenção representa entre R$60 e R$110 a mais de economia mensal pro dono do telhado. No payback dum sistema de R$22 mil, é a diferença entre amortizar em 4 anos e amortizar em 5 e meio. Em vinte e cinco anos, são R$24 mil a R$35 mil cumulativos. Quem mora em estado sem isenção e está estudando solar tem que colocar esse número na conta — porque o vendedor do orçamento muitas vezes simula com isenção mesmo onde não tem.</p>

<h2 id="a-reforma-tributaria-pode-mudar-tudo">A Reforma Tributária pode mudar tudo em 2027</h2>

<p>A Lei Complementar 214/2025, que regulamentou a Reforma Tributária aprovada em 2023, cria dois novos impostos pra substituir parte do que hoje é ICMS, PIS, Cofins e IPI: a CBS (federal) e o IBS (compartilhado entre estados e municípios). A transição começa em 2026 com testes e vai até 2033. Energia elétrica está dentro do escopo.</p>

<p>Aqui está o problema pra solar residencial: o IBS é desenhado pra ser uniforme nacionalmente — alíquota igual em todos os estados, com a partilha sendo decidida na arrecadação. Isso significa que as isenções estaduais que hoje existem em colcha de retalhos podem virar isenção uniforme nacional (ótimo cenário), ou cobrança uniforme nacional (péssimo cenário pros 15 estados que hoje isentam), dependendo de como os legisladores definirem o regime específico pra geração distribuída.</p>

<p>O debate em Brasília em 2025 e 2026 está sendo travado nessa linha. ABSOLAR e setor solar pleiteiam isenção uniforme. Estados que hoje cobram ICMS pressionam pra manter cobrança como receita compensatória. O resultado vai sair em 2026 ou 2027 — antes do IBS começar a coletar de fato em 2029. Quem instalou solar achando que a isenção do seu estado é pra sempre vai descobrir, talvez já no próximo orçamento doméstico, que ela não é.</p>

<h2 id="o-que-fazer-agora">O que fazer com isso agora</h2>

<p>Primeiro, descobrir em que lado da colcha você está. Pega a conta de luz e procura "energia compensada" — se tiver ICMS calculado em cima, você está nos 12 que cobram. Se não tiver, está nos 15 que isentam. Se o teu estado isenta hoje, pesquisa quando o decreto vence (cada estado tem prazo próprio: SP vence em dez/2026, MS prorrogou recentemente, GO tem prazo aberto, etc).</p>

<p>Segundo, no payback do orçamento solar, simula com e sem isenção. Se o vendedor projetou só com isenção e a tua isenção vence em dois anos, exige um cenário alternativo. Sistema solar não muda de payback no meio do caminho — taxa muda. Quem te apresentou só o cenário rosa não está te ajudando a decidir, está te ajudando a comprar.</p>

<p>Terceiro, acompanhar o debate da Reforma Tributária via ABSOLAR ou direto pelo Diário Oficial. A definição do tratamento da geração distribuída no IBS é o item mais importante pra solar residencial nos próximos dois anos — mais importante que qualquer aviso de "promoção" que vai chegar no teu WhatsApp.</p>

<p style="margin-top: 32px; padding: 16px; background: #f6f8f7; border-radius: 6px; font-size: 0.95em;">
<strong>Sou Laura Amorim, engenheira eletricista formada pela FEEC/Unicamp e fundadora da Jugaad Instalações em Campinas.</strong> Em seis anos de operação, conta-de-luz mais ICMS é a primeira coisa que peço pro cliente trazer antes de orçar — porque o teu CEP define metade do payback do teu sistema. Se quiser entender as outras camadas que mudam o cálculo, o ebook <a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=cta_final&amp;utm_campaign=article-024"><em>Eu, Gerente Solar</em></a> tem os 11 capítulos completos.
</p>',
  'energia-solar-residencial',
  '["ICMS energia solar","CONFAZ 16/2015","isencao ICMS","Reforma Tributaria","IBS CBS","geracao distribuida","Lei Complementar 214/2025","aula 69"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-15T09:35:00.000Z',
  '2026-05-15T09:35:00.000Z',
  '2026-05-15T09:35:00.000Z',
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
