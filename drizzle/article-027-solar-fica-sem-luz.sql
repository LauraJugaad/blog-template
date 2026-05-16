-- =============================================================================
-- ARTICLE-027 — Ensaio v2.8 — Solar comum vs queda de energia
-- Fonte: Aula 35 (https://www.youtube.com/watch?v=qc3mRo92Ddw)
-- Estrutura: COMPARAÇÃO (c) — solar comum vs híbrido na queda
-- Hook: PARADOXO (#4) — placa no teto, casa sem luz mesmo assim
-- Tese: Anti-ilhamento desliga seu solar quando a rede cai — é por proteção do
--       técnico da CPFL, não por defeito. Vendedor que prometeu "nunca mais sem
--       luz" sem dimensionar bateria, mentiu por padrão regulatório.
-- Cardápio mensal: 1ª COMPARAÇÃO de maio
-- Anti-canibalização: vs article-025 (híbrido) — esse fala MITO, 025 fala QUEM PRECISA
-- Validações v2.8: PASS
-- Comprimento: ~1080 palavras
-- Intent: informational → preset CTA mínimo
-- =============================================================================

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '9E2EF660EFCCSE0ESVTA70V4HS',
  'energia-solar-fica-sem-luz-anti-ilhamento-mito-vendedor',
  'Solar fica sem luz quando a rede cai — e por que isso é por design',
  'Por que solar fica sem luz na queda da rede: anti-ilhamento',
  'Sua casa tem placa solar e ficou sem luz na última queda? Não é defeito. É anti-ilhamento, exigência ANEEL. Engenheira explica o que ninguém te conta no orçamento.',
  'Quase todo cliente que instalou solar comum acha que vai estar protegido na próxima queda da concessionária. Não está. Quando a rede cai, o seu sistema cai junto — por exigência regulatória, não por defeito. Este é o mito que o vendedor mais escorrega no orçamento.',
  '<p>Tem placa solar no teto. Falta luz no bairro. Sua casa também ficou sem luz.</p>

<p>É o mito mais persistente que escuto em seis anos atendendo solar residencial em Campinas e Jundiaí. Pelo menos um cliente por mês liga, geralmente em domingo de chuva forte, perguntando "Laura, por que minha casa apagou se eu tenho painel solar lá em cima?". Não é defeito. Não é instalação ruim. É exatamente como deveria funcionar — porque a regra que faz seu sistema desligar quando a rede cai existe pra proteger uma pessoa que não está na sua casa: o técnico da CPFL que vai subir no poste.</p>

<p>Esse texto explica por que solar residencial comum não te protege de queda de luz, qual é o equipamento que protegeria, e por que o vendedor que prometeu "nunca mais sem luz" sem dimensionar bateria ou está desinformado ou apostando que tu não vai testar.</p>

<h2 id="anti-ilhamento-o-que-e">Anti-ilhamento: a regra que faz seu solar desligar junto com a rede</h2>

<p>Sistema solar residencial brasileiro padrão é <em>on-grid</em> — conectado à rede da concessionária. Painel gera energia DC, inversor converte pra AC e despeja na rede. Sua casa consome dessa AC, e o excedente vai compensar tua conta. É o modelo que funciona pra 99% das instalações no país.</p>

<p>O problema é exatamente esse "conectado à rede". A norma técnica ABNT NBR 16149 e a Resolução Normativa ANEEL 1059 exigem que todo inversor on-grid tenha função de <strong>anti-ilhamento</strong>: detector que desliga o inversor automaticamente em menos de 2 segundos quando a tensão da rede da concessionária some.</p>

<p>O motivo é uma cena específica que ninguém quer ver acontecer. Imagine: chuva forte, queda de energia no bairro. Técnico da CPFL é chamado pra consertar transformador a 200 metros da sua casa. Ele desliga o ramal pelo disjuntor da rua, achando que cortou a energia. Sobe no poste. Mas a sua casa, três quarteirões dali, tem solar e continua produzindo. Esses kWh seguem pelo cabo de baixa tensão até o transformador onde ele tá trabalhando. O técnico encosta no cabo "morto" achando que está desenergizado. Está vivo. Acidente fatal.</p>

<p>Anti-ilhamento existe pra isso. Funciona. E é por isso que toda casa com solar on-grid fica sem luz junto com o bairro inteiro, mesmo com sol pleno no telhado.</p>

<h2 id="o-que-o-vendedor-omitiu">O que o vendedor omitiu sobre essa parte</h2>

<p>Atendi em 2024 uma cliente em Vinhedo que tinha contratado solar com promessa explícita do vendedor: "com solar, sua casa não fica mais sem luz". A casa dela tinha sido projetada com home office no andar de cima — internet, computador, dois monitores, ar-condicionado leve. Conta de luz de R$ 580 por mês. O vendedor fechou R$ 19.500 com sistema string puro 5 kWp e essa promessa solta.</p>

<p>Primeira queda depois da instalação: terça-feira, 14h, sol forte. Casa apagou junto com a rua. Cliente me ligou achando que tinha defeito de instalação. Não tinha defeito. Tinha promessa falsa do vendedor — que ela registrou no contrato, mas a empresa instaladora alegou "interpretação subjetiva da fala do representante comercial" e se recusou a converter o sistema. Custo da conversão pra híbrido com bateria razoável: mais R$ 32.000 que ela não tinha previsto.</p>

<p>Essa promessa solta é tão comum que vale destacar: <strong>qualquer vendedor que prometer "nunca mais sem luz" sem mencionar inversor híbrido e bateria está te vendendo algo que ele não vai entregar</strong>. Não é exagero, não é juridiquês — é leitura literal da norma técnica. Sistema on-grid puro não tem como manter sua casa ligada quando a rede cai. Ponto.</p>

<h2 id="quem-realmente-resolve">Quem realmente resolve: o sistema híbrido com bateria</h2>

<p>O equipamento que mantém a casa ligada na queda é o <em>inversor híbrido</em> — homologado pela ANEEL pra uso residencial só em 2022, e disponível em modelos Growatt, Deye, Sungrow, Goodwe. Combinado com bateria LFP (íon de lítio fosfato), ele detecta a queda da rede, desconecta da rede em frações de segundo, e religa a casa via inversão da bateria pra alimentar circuitos selecionados.</p>

<p>Note o "circuitos selecionados". Não é a casa inteira. Bateria residencial padrão de 10 kWh aguenta umas 4 a 6 horas alimentando geladeira, internet, iluminação, alguns pontos de tomada. Não aguenta ar-condicionado central, chuveiro elétrico, máquina de lavar simultâneos. A casa pra ter <em>continuidade total</em> precisaria de bateria de 20-30 kWh, o que sai R$ 38.000 a R$ 55.000 só na parte de armazenamento, sem contar o inversor híbrido.</p>

<p>Sistema completo com solar 5 kWp + inversor híbrido + bateria 10 kWh em 2026: entre R$ 48.000 e R$ 58.000. Sistema solar string puro 5 kWp equivalente: R$ 22.000 a R$ 26.000. A diferença — perto de R$ 25.000 — é o preço de não ficar sem luz na queda. Pra cliente em bairro com DEC (Duração Equivalente de Interrupção) baixo, esse preço raramente paga conta. Pra cliente em bairro com DEC alto, paga em 3 a 5 anos.</p>

<h2 id="como-saber-se-vale-pra-voce">Como saber se a continuidade vale pra sua casa</h2>

<p>O DEC da tua região está público no site da ANEEL. Procura por "DEC por consumidor" e filtra pelo teu CEP. Médias estaduais variam: São Paulo em 2024 ficou em 5,8 horas/ano; Rio Grande do Norte em 28,4 horas/ano; Pará em 39,7 horas/ano. Mas o que importa é o teu CEP específico, porque dentro de São Paulo tem bairros com DEC de 1 hora e bairros com DEC de 35 horas.</p>

<p>Se o teu CEP fica acima de 20 horas anuais, vale conversar sobre híbrido — provavelmente paga conta em 4 a 5 anos pela produtividade não perdida. Se está abaixo de 10 horas anuais, sistema string puro é a escolha racional — usa o que sobrou pra reforma da cozinha. Entre 10 e 20, depende do perfil da casa: home office é mais sensível que casa de fim de semana.</p>

<p>O que não vale, em nenhum dos três cenários, é assinar um sistema string puro acreditando que ele vai te proteger da queda. Não vai. A pergunta certa pro vendedor antes de fechar não é "esse sistema funciona com sol nublado?" — todo mundo funciona com sol nublado, reduzido. A pergunta certa é "esse sistema mantém minha casa ligada quando a rede cai?". Se a resposta dele for "claro, é solar, gera energia direto da luz", ele acabou de te dizer que não entende o produto que está vendendo. Próximo orçamento.</p>

<p style="margin-top: 32px; padding: 16px; background: #f6f8f7; border-radius: 6px; font-size: 0.95em;">
<strong>Sou Laura Amorim, engenheira eletricista formada pela FEEC/Unicamp e fundadora da Jugaad Instalações em Campinas.</strong> Em 174 instalações, recusei 14 propostas de venda quando o cliente trouxe orçamento de string puro com promessa de "energia mesmo na queda". É falsa por padrão regulatório, e quem aceita assinar essa promessa fica com prejuízo na primeira queda séria. Se quiser entender as outras camadas do orçamento solar que separam venda honesta de propaganda, o ebook <a href="https://www.eugerentesolar.com.br/?utm_source=blog&amp;utm_medium=cta_final&amp;utm_campaign=article-027"><em>Eu, Gerente Solar</em></a> tem 11 capítulos completos.
</p>',
  'energia-solar-residencial',
  '["anti-ilhamento","NBR 16149","REN 1059","inversor hibrido","DEC ANEEL","queda de energia","174 instalacoes","aula 35"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-16T10:00:00.000Z',
  '2026-05-16T10:00:00.000Z',
  '2026-05-16T10:00:00.000Z',
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
