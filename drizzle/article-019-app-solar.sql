-- =============================================================================
-- ARTICLE-019 — Ensaio autoral v2.8 — App de monitoramento solar
-- Fonte: Aula 53 (https://www.youtube.com/watch?v=0KGWnhPthvs) — Solar Jugaad canal
-- Estrutura: REVELAÇÃO (d) — expor mecanismo escondido sobre garantia + diagnóstico
-- Hook: ANEDOTA CONCRETA (#1) — cenário repetitivo (174 instalações Jugaad)
-- Tese: O app não é luxo — sem ele, garantia Apsystems some e diagnóstico vira chute
-- Dados verificados na transcript real da aula (zero invenção)
-- =============================================================================

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '01KRCXPN79CK405N32FFD5KCN6',
  'app-energia-solar-garantia-monitoramento',
  'O app do solar não é "uma boa ter" — sem ele tu perde garantia e vira chute técnico',
  'App energia solar: por que sem ele a garantia some e o diagnóstico vira chute',
  'Engenheira eletricista explica por que o app de monitoramento solar (Apsystems EMA, Hoymiles, Huawei) é exigência de garantia — não brinde de venda. Sem acesso remoto, suporte técnico não consegue diagnosticar nada.',
  'O app de monitoramento solar não é luxo nem brinde de venda. É exigência de garantia da Apsystems e ferramenta única que permite suporte técnico remoto. Sem ele, diagnóstico de defeito vira chute.',
  '<p>Quando cliente me liga preocupado porque a conta veio mais alta no mês, a primeira coisa que peço é sempre a mesma: abre o app do solar e me manda print. Não vou no telhado, não marco visita, não chuto causa. Em 80% dos casos, o app já me diz onde está o problema.</p>

<p>Esse é um daqueles componentes do sistema solar que vendedor trata como "brinde gratuito" mas que, na engenharia real, é tão importante quanto o painel. O app de monitoramento define se o teu sistema vai durar com qualidade os 25 anos prometidos — ou se vai virar uma instalação órfã quando o problema aparecer.</p>

<h2 id="app-nao-eh-brinde">O app não é brinde — é parte do contrato</h2>

<p>Quando tu instala um sistema com microinversor Apsystems, o fabricante te dá acesso ao app EMA (Energy Management Application). Esse acesso é cadastrado durante a instalação, vinculando o teu sistema ao número de série dos microinversores. Sem esse cadastro feito, o sistema está fisicamente instalado mas digitalmente órfão.</p>

<p>O ponto que poucos clientes sabem: <strong>a Apsystems exige acesso remoto via app pra manter a garantia válida</strong>. A lógica do fabricante é simples — se eles não conseguem monitorar o equipamento à distância, não conseguem validar falhas, e portanto não podem honrar garantia técnica. É cláusula contratual, não opinião comercial.</p>

<p>Quando o sistema fica sem cadastro no app (por descuido da empresa instaladora ou porque o cliente perdeu acesso depois), a garantia de equipamento entra em zona cinzenta. Não é que perde imediatamente. Mas no dia que precisar acionar, o fabricante pede o histórico do app — e se não tem, a discussão vira longa.</p>

<h2 id="suporte-tecnico-remoto">Como funciona o suporte técnico de verdade</h2>

<p>Quando algum sistema Jugaad apresenta comportamento estranho — geração caindo, painel desconectado, alerta de comunicação —, o fluxo de suporte é o seguinte:</p>

<ol>
  <li>Eu abro o app do cliente (acesso remoto autorizado por ele)</li>
  <li>Olho histórico de geração dos últimos 30 dias por painel</li>
  <li>Identifico padrão (sombra nova? falha de comunicação? perda gradual?)</li>
  <li>Se necessário, escalo pra Daycore (representante Apsystems em Ribeirão Preto)</li>
  <li>Daycore entra remotamente no sistema, faz diagnóstico técnico profundo</li>
  <li>Propõe plano de ação pra empresa instaladora executar</li>
</ol>

<p>Nada disso é possível sem app ativo. Sem ele, a sequência vira: cliente liga reclamando, empresa instaladora marca visita técnica, sobe no telhado, mede no escuro, troca peça por suspeita, demora 3 semanas. Pode resolver, pode não resolver.</p>

<p>Empresa instaladora boa monitora o app dos clientes proativamente. Empresa ruim só descobre que tem problema quando o cliente liga gritando.</p>

<h2 id="voce-eh-gerente">Por que tu precisa abrir o app no primeiro mês</h2>

<p>A maioria dos clientes faz a mesma coisa: instala o sistema, abre o app uma vez na semana inicial pra ver "se tá produzindo", se anima com os números, e depois nunca mais entra. Em três meses, esqueceu a senha. Em seis meses, perdeu o login. Em um ano, quando o problema aparece, não tem histórico nenhum.</p>

<p>Esse é o ponto onde o positioning "tu é o gerente da tua instalação" deixa de ser slogan e vira realidade técnica. <strong>O sistema solar é um ativo de 25 anos que precisa de gestão</strong>. Não monitorar é como ter um carro e nunca olhar pro painel — pode rodar bem por anos e um dia parar sem aviso.</p>

<p>O que precisa entrar na tua rotina, no mínimo:</p>

<ul>
  <li><strong>Semanalmente:</strong> abre o app, olha a geração total da semana, compara com a mesma semana do mês anterior</li>
  <li><strong>Mensalmente:</strong> compara com a conta de luz — geração total deve bater com o crédito que aparece</li>
  <li><strong>Após chuva forte / temporal:</strong> abre o app pra confirmar que todos os painéis voltaram a comunicar</li>
  <li><strong>Após poda / construção vizinha:</strong> reabre pra verificar se algum painel ficou em sombra nova</li>
</ul>

<p>Não é difícil. São 30 segundos por semana. Mas é o que separa quem tem solar funcionando bem por 25 anos de quem descobre um painel parado dois anos depois — com prejuízo acumulado de centenas de reais em conta de luz não economizada.</p>

<h2 id="aplicativos-por-marca">Os apps por marca (referência rápida)</h2>

<p>Cada fabricante de inversor tem seu próprio app. Os três mais comuns no mercado residencial brasileiro:</p>

<ul>
  <li><strong>Apsystems (microinversor):</strong> app EMA, geração por painel individual visível</li>
  <li><strong>Hoymiles (microinversor):</strong> app S-Miles Cloud, lógica similar ao EMA</li>
  <li><strong>Huawei (string):</strong> app FusionSolar, geração total do string (sem painel individual)</li>
</ul>

<p>A diferença mais relevante: nos microinversores, o app mostra geração painel por painel. Se um painel cair pra metade, tu vê na hora. Em inversor string, vê só o total — se um painel cair de 12, o total cai 8% e fica difícil identificar qual.</p>

<p>É uma das razões pelas quais, em telhados com risco de sombra parcial (chaminé, antena, árvore vizinha), eu sempre recomendo microinversor. Não é só pela perda de geração — é pela capacidade de diagnóstico individual via app.</p>

<h2 id="proxima-decisao">A próxima vez que receber orçamento solar</h2>

<p>Quando o vendedor te apresentar a proposta, pergunta direto e em escrito:</p>

<ol>
  <li>Qual app de monitoramento vem com o sistema?</li>
  <li>Quem faz o cadastro inicial — empresa instaladora ou cliente?</li>
  <li>Em qual etapa eu recebo as credenciais — antes da homologação ou depois?</li>
  <li>A empresa monitora proativamente meu sistema ou só responde quando eu reclamo?</li>
</ol>

<p>Empresa que não consegue responder essas quatro perguntas em escrito não está pronta pra entregar suporte de 25 anos. E suporte é a parte da venda que aparece só depois que tu já assinou.</p>',
  'energia-solar-residencial',
  '["app solar","monitoramento energia solar","Apsystems EMA","Hoymiles S-Miles","Huawei FusionSolar","garantia microinversor","Daycore","blindagem do consumidor","aula 53"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-11T15:00:00.000Z',
  '2026-05-11T15:00:00.000Z',
  '2026-05-11T15:00:00.000Z',
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
