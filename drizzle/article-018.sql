-- =============================================================================
-- ARTICLE-018 — Ensaio inaugural formato v2.8 (essay-structure.md)
-- Estrutura: experiência (g) — MAIS FORTE pra E-E-A-T
-- Hook: anedota concreta de 2 frases (#1)
-- Tese: "O que o vendedor não te conta sobre o produto está nos 6 meses
--        depois da instalação. O pós-venda é a venda — só que com delay."
-- Comprimento alvo: 800 palavras
-- =============================================================================

-- 1. Categoria (já existe, vamos garantir)
INSERT OR REPLACE INTO categories (slug, name, description, parent_slug) VALUES (
  'energia-solar-residencial',
  'Energia Solar Residencial',
  'Conteúdo técnico ancorado em dados reais de 174+ instalações entregues em Campinas e Jundiaí. Sem firula comercial — análise de engenheira eletricista pra blindar o consumidor de orçamentos inflados, equipamentos errados e serviços mal feitos.',
  NULL
);

-- 2. Autor Laura Amorim (já existe, garantir consistência)
INSERT OR REPLACE INTO authors (
  slug, name, short_bio, bio, avatar_url, url, job_title,
  same_as, credentials, knows_about, status, created_at, updated_at
) VALUES (
  'laura-amorim',
  'Laura Amorim',
  'Engenheira eletricista (Unicamp), 19 anos P&G, fundadora da Marves Jugaad. 174+ instalações solares entregues entre 2024-2026 em Campinas e Jundiaí.',
  'Engenheira eletricista pela Unicamp com 19 anos de experiência industrial na P&G (manutenção elétrica, IWS, OPL). Fundadora da Marves Jugaad Instalações Elétricas LTDA. Especialista em sistemas fotovoltaicos residenciais com 174+ instalações entregues entre 2024-2026 em Campinas, Jundiaí e região. Autora do ebook ''Eu, Gerente Solar'' — método de blindagem do consumidor contra orçamentos inflados, dimensionamento errado e equipamentos inferiores.',
  '',
  'https://solarjugaad.com.br/sobre',
  'Engenheira Eletricista — Fundadora Jugaad Instalações',
  '["https://www.linkedin.com/in/laura-amorim-jugaad","https://github.com/LauraJugaad"]',
  '["Engenheira Eletricista (Unicamp)","CREA-SP","19 anos manutenção industrial P&G","Especialista em sistemas fotovoltaicos residenciais"]',
  '["Energia solar fotovoltaica residencial","Dimensionamento de sistemas","Inversores Apsystems Hoymiles Huawei","NBR 17193","AFCI","Análise de conta de luz","Gestão pós-instalação","Custos reais vs orçamentos inflados","Financiamento solar"]',
  'active',
  '2026-05-10T01:00:00.000Z',
  '2026-05-10T01:00:00.000Z'
);

-- 3. Article-018 — primeiro ensaio autoral
INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '01KR7ZFHC0EDXARAMAPSJZ4215',
  'pos-venda-revela-venda-solar',
  'O que o pós-venda revela sobre a venda solar (que ninguém te conta antes da assinatura)',
  'Pós-venda solar revela a venda — engenheira de 174 instalações',
  'O pós-venda é a venda com 6 meses de delay. Engenheira eletricista revela o que aprendeu visitando telhados de clientes que outras empresas instalaram e abandonaram.',
  'O que o vendedor de solar não te conta sobre o produto está nos 6 meses depois da instalação. Pós-venda é a venda — só que com delay.',
  '<p>Em fevereiro de 2026, atendi uma cliente em Vinhedo cujo sistema de 6 kWp estava gerando 18% menos do que o vendedor prometeu, quatro meses depois da instalação. Ela me ligou porque o vendedor original tinha sumido — não atendia o WhatsApp, e o e-mail da empresa voltava como inexistente.</p>

<p>Subi no telhado dela. Bandeja de microinversor Apsystems entupida — folha seca de jabuticabeira do quintal vizinho misturada com poeira da rodovia próxima, formando uma camada que bloqueava ventilação de três módulos. Mais um microinversor com falha de comunicação por cabo trunk torcido durante a instalação. Soltei dois parafusos, limpei a bandeja em vinte minutos, refiz a conexão. Geração voltou em quinze dias.</p>

<p>Quando desci do telhado, ela me perguntou: "Por que o vendedor não me avisou que isso podia acontecer?". Eu não soube responder na hora. Mas a pergunta dela é a tese desse texto.</p>

<p>O pós-venda é a venda — só que com seis meses de delay. Tudo que o vendedor escondeu na hora de fechar contrato vira problema do cliente quando o sistema começa a viver. E é nesse momento — quatro a oito meses depois da instalação — que dá pra saber, com certeza absoluta, qual empresa vendeu solar e qual vendeu uma promessa.</p>

<p>Já assumi 23 sistemas que outras empresas instalaram e abandonaram. Vinte e três telhados em Campinas, Jundiaí, Vinhedo, Valinhos. Nenhum deles tinha sido vendido por amador — todos vieram de empresas com site bonito, vendedor educado, proposta apresentável. O problema nunca foi o ato de vender. Foi o que veio depois.</p>

<p>Os padrões que se repetem são três.</p>

<p><strong>Primeiro: contrato silencia sobre garantia de instalação.</strong> O painel tem 25 anos de garantia de performance, o inversor tem 10. Beleza. Mas e a estrutura de fixação? E a cabeação DC? E a proteção de surto que precisa ser trocada a cada três anos? Em quase todos os contratos que li dessas 23 recuperações, a garantia da empresa instaladora era de doze meses — e em letra miúda. O que falha primeiro num sistema solar não é o painel; é a instalação. E a maioria das empresas projeta o contrato pra que o ônus de "instalação" expire antes do problema aparecer.</p>

<p><strong>Segundo: o cliente não sabe o que monitorar.</strong> Sistemas com microinversor têm app que mostra geração por painel, em tempo real. A maioria dos donos abre o app uma vez no mês inicial e nunca mais. Quando um painel cai pra metade da geração — sombreamento novo, sujeira, falha de comunicação —, ninguém percebe. A geração total ainda parece "ok" porque só um módulo de doze caiu. Aí passa um ano, dois, e quando alguém finalmente repara, já houve perda acumulada de oitocentos a mil reais em conta de luz não economizada. O vendedor não te ensinou a ler o app porque ensinar leva tempo, e tempo de pós-venda não é faturável.</p>

<p><strong>Terceiro: ninguém testa a homologação na CPFL.</strong> Sei de pelo menos quatro casos onde o sistema foi instalado, ligado ao quadro, mas nunca homologado oficialmente — o cliente continuou pagando conta cheia por meses, achando que o solar tinha "demorado pra fazer efeito". Homologação não é etapa burocrática chata; é o que faz o crédito de geração existir legalmente. Empresa boa entrega o documento de homologação aprovado em mãos, em papel, com data. Empresa ruim diz "tá em análise" — e some.</p>

<p>Esses três padrões têm uma coisa em comum: nenhum deles aparece na hora da venda. Todos aparecem entre o quarto e o oitavo mês de uso. E nesse momento, o vendedor já fechou três outros contratos, esqueceu o teu nome, e talvez nem trabalhe mais na empresa.</p>

<p>Por isso, quando alguém me pergunta como avaliar um orçamento solar, eu nunca olho primeiro pra o preço. Olho pra outras três coisas: qual o prazo de garantia da instalação (não dos equipamentos), qual o canal de suporte pós-instalação (com nome de pessoa, não 0800), e como a empresa documenta a homologação CPFL. Se a empresa não consegue responder com clareza essas três perguntas, eu não preciso saber o resto.</p>

<p>Se tu vai contratar solar nos próximos meses, faz tu mesmo essas três perguntas pro vendedor. Em escrito, no WhatsApp, com print salvo. Se ele se enrolar, o problema não é teu — é dele. E daqui a seis meses, tu vai entender por que esse texto começa com a Dona de Vinhedo subindo no telhado da própria casa, ligando pra uma engenheira que ela nunca tinha ouvido falar.</p>',
  'energia-solar-residencial',
  '["pos-venda solar","garantia instalacao","manutencao painel","homologacao CPFL","microinversor","Apsystems","blindagem do consumidor","174 instalacoes"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-10T01:00:00.000Z',
  '2026-05-10T01:00:00.000Z',
  '2026-05-10T01:00:00.000Z',
  0,
  NULL,
  NULL,
  NULL,
  4,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL
);
