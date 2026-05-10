-- =============================================================================
-- POST INAUGURAL — Solar Jugaad Blog Astro+CF (A/B test)
-- Voice: Sage+Caregiver "Sábio-Protetor" / "blindagem"
-- Source brand: docs/brand/brand-book.md
-- =============================================================================

-- 1. Categoria nova: Energia Solar Residencial
INSERT OR REPLACE INTO categories (slug, name, description, parent_slug) VALUES (
  'energia-solar-residencial',
  'Energia Solar Residencial',
  'Conteúdo técnico ancorado em dados reais de 174+ instalações entregues em Campinas e Jundiaí. Sem firula comercial — análise de engenheira eletricista pra blindar o consumidor de orçamentos inflados, equipamentos errados e serviços mal feitos.',
  NULL
);

-- 2. Autor Laura Amorim (sobrescreve o equipe-editorial padrão)
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
  '2026-05-07T00:30:00.000Z',
  '2026-05-07T00:30:00.000Z'
);

-- 3. Artigo inaugural
INSERT OR REPLACE INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '01KQZY3GK96H5JHBK4AF1WMWCE',
  '5-sinais-orcamento-solar-inflado',
  '5 sinais de que teu orçamento solar foi inflado em R$10k+ (e como blindar)',
  '5 sinais de orçamento solar inflado — método Jugaad pra blindar consumidor',
  'Engenheira eletricista revela os 5 sinais que mais aparecem em orçamentos inflados de energia solar residencial. Baseado em análise de 174+ instalações entregues em Campinas e Jundiaí entre 2024-2026.',
  'Em média, vendedores de energia solar inflam orçamentos residenciais em R$10.000 ou mais. Identifiquei 5 sinais consistentes nas 174+ propostas que minha equipe analisou. Aqui está o método pra detectar antes de assinar.',
  '<p class="lead">Em média, vendedores de energia solar inflam orçamentos residenciais em <strong>R$10.000 ou mais</strong>. Esse número não é estimativa de mercado — é o que minha equipe identificou analisando 174+ propostas entre 2024 e 2026, em Campinas e Jundiaí. Os mesmos 5 sinais aparecem repetidamente. Se teu orçamento tem 3 ou mais deles, considere uma segunda opinião antes de assinar.</p>

<h2 id="sinal-1-vida-util-painel">Sinal 1 — Painéis com promessa de vida útil acima de 30 anos</h2>

<p>Painel solar residencial monocristalino tem vida útil <strong>técnica de 25 anos</strong> com degradação anual padrão de 0,5% a 0,8%. É o que está nas fichas técnicas dos fabricantes Tier 1 (Canadian, Trina, Risen, JA Solar, Astronergy). Quando o vendedor promete "30 a 35 anos de vida útil", uma de duas coisas está acontecendo:</p>

<ul>
  <li>Ele está usando a vida útil <em>física</em> (o painel ainda gera, com 50%+ de degradação) como argumento comercial. Tecnicamente verdade, financeiramente engano.</li>
  <li>Ele inflou expectativa pra justificar payback mais longo no cálculo, mascarando que o equipamento proposto não bate com o investimento pedido.</li>
</ul>

<p><strong>O que pedir:</strong> a ficha técnica oficial do fabricante específico, não o folder comercial da empresa. A garantia de potência (geralmente 25 anos com curva de degradação especificada) é o número que importa.</p>

<h2 id="sinal-2-inversor-superdimensionado">Sinal 2 — Inversor superdimensionado "pra crescer no futuro"</h2>

<p>É comum o vendedor propor um inversor 30-50% maior que a potência dos painéis "caso você queira expandir o sistema depois". O argumento parece lógico, mas tem 2 problemas:</p>

<ol>
  <li><strong>Custo imediato real:</strong> um inversor 5kW custa significativamente menos que um 8kW, mesmo que você use só 4kWp de painéis em ambos os casos. A diferença vai pro bolso da empresa, não pro teu sistema.</li>
  <li><strong>Eficiência menor:</strong> inversor operando consistentemente abaixo de 50% da capacidade nominal tem eficiência reduzida em alguns períodos. Você paga mais e gera menos por kWp instalado.</li>
</ol>

<p><strong>Regra prática:</strong> para residencial, dimensione o inversor entre 80% e 110% da potência total dos painéis. "Sobra de 50% pra futuro" é argumento de venda, não de engenharia.</p>

<h2 id="sinal-3-string-vs-microinversor">Sinal 3 — Inversor string vendido como "padrão de mercado" sem explicar microinversor</h2>

<p>Sistemas com inversor string (o tradicional, 1 inversor central) têm uma fragilidade conhecida: <strong>uma sombra parcial em qualquer painel reduz a geração de toda a string</strong>. Em telhados residenciais com chaminé, antena, caixa d''água ou árvore vizinha, isso vira perda real de 10% a 25% ao ano.</p>

<p>Microinversores (Apsystems DS3-D, Hoymiles MI-1500) resolvem porque cada painel opera independente. Custam um pouco mais, mas frequentemente entregam mais kWh/ano que um string mais barato no mesmo telhado.</p>

<p>Quando o vendedor não menciona microinversor como opção, ou descarta com "é mais caro" sem mostrar o cálculo de geração comparada no <em>teu</em> telhado, ele está vendendo o que tem em estoque, não o que serve pra ti.</p>

<h2 id="sinal-4-payback-3-anos">Sinal 4 — Payback prometido de 2 a 3 anos</h2>

<p>Em 2026, no Brasil, com a Lei 14.300 já em vigor (Marco Legal da Geração Distribuída) e a tarifa fio-B sendo cobrada gradualmente, payback realista de sistema residencial bem dimensionado fica entre <strong>4 e 7 anos</strong>. Promessa de 2-3 anos hoje só é matematicamente viável em 3 cenários:</p>

<ul>
  <li>Tarifa local muito acima da média (acima de R$1,20/kWh) — específico de algumas concessionárias</li>
  <li>Consumo muito alto (acima de 800 kWh/mês) que justifica sistema grande</li>
  <li>Cálculo que ignora fio-B, custos de manutenção e degradação dos painéis</li>
</ul>

<p>Pra residencial padrão (consumo 250-500 kWh/mês, tarifa R$0,80-1,00/kWh), payback abaixo de 4 anos é vermelho.</p>

<h2 id="sinal-5-garantia-instalacao">Sinal 5 — Garantia de "25 anos no sistema todo"</h2>

<p>Esse é o engano mais sutil. Existem <strong>4 garantias separadas</strong> num sistema solar:</p>

<ul>
  <li><strong>Painel — produto:</strong> 10 a 12 anos (defeito de fabricação)</li>
  <li><strong>Painel — performance:</strong> 25 anos (curva de degradação)</li>
  <li><strong>Inversor:</strong> 5 a 12 anos (Apsystems/Hoymiles tem 12; alguns string têm 5)</li>
  <li><strong>Instalação (mão de obra + estrutura):</strong> 1 a 5 anos, depende da empresa</li>
</ul>

<p>"Garantia de 25 anos do sistema" é simplificação que esconde os prazos curtos do inversor e da instalação. Quando o inversor falhar no ano 7, o "sistema todo" não tem garantia. Pede contrato com as 4 garantias listadas separadamente.</p>

<h2 id="metodo-blindagem">O método de blindagem em 3 perguntas</h2>

<p>Antes de assinar qualquer orçamento solar residencial, exija respostas escritas pra essas 3 perguntas:</p>

<ol>
  <li><strong>Qual a marca, modelo e potência exata de cada equipamento?</strong> (não "painéis Tier 1" — quero o modelo específico)</li>
  <li><strong>Qual a geração estimada em kWh/ano e como esse número foi calculado?</strong> (com simulação no Sundata, PVsyst ou ferramenta equivalente)</li>
  <li><strong>Quais são as 4 garantias separadas (painel produto, painel performance, inversor, instalação)?</strong></li>
</ol>

<p>Se o vendedor não consegue responder com clareza, fugiu de algum dos itens, ou demora dias pra mandar — você acabou de identificar uma empresa que não é tua melhor opção. Não importa o desconto.</p>

<p><em>Análise baseada em 174+ instalações entregues pela Marves Jugaad entre 2024 e 2026, em Campinas, Jundiaí e região metropolitana.</em></p>',
  'energia-solar-residencial',
  '["orçamento solar","blindagem do consumidor","dimensionamento solar","microinversor","Apsystems","Hoymiles","NBR 17193","Lei 14.300","fio-B","payback solar"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-07T00:30:00.000Z',
  '2026-05-07T00:30:00.000Z',
  '2026-05-07T00:30:00.000Z',
  0,
  NULL,
  '["Vendedores inflam orçamentos solar residencial em R$10.000+ em média (174 análises Jugaad 2024-2026)","Promessa de vida útil acima de 30 anos contradiz fichas técnicas — padrão Tier 1 é 25 anos com degradação especificada","Inversor superdimensionado 30-50% acima dos painéis aumenta custo e reduz eficiência — regra é 80-110% da potência",
"Microinversor (Apsystems DS3-D, Hoymiles MI-1500) frequentemente entrega mais kWh/ano que inversor string em telhados residenciais com sombra parcial","Em 2026 com Lei 14.300 ativa, payback residencial realista é 4-7 anos — promessa de 2-3 anos é vermelho"]',
  '[{"q":"Qual a vida útil real de um painel solar residencial?","a":"Painel monocristalino Tier 1 tem vida útil técnica de 25 anos, com curva de degradação garantida pelo fabricante (geralmente 0,5% a 0,8% ao ano). Após 25 anos, o painel ainda gera, mas com perda acumulada de 12-20% da potência inicial."},{"q":"Por que microinversor é melhor que inversor string em residencial?","a":"Microinversor faz cada painel operar independente. Em telhados com sombra parcial (chaminé, antena, árvore vizinha), evita que uma sombra reduza a geração de toda a string. Frequentemente entrega 10-25% mais kWh/ano que string no mesmo telhado."},{"q":"Qual payback realista de energia solar residencial em 2026?","a":"Entre 4 e 7 anos, considerando Lei 14.300 (fio-B sendo cobrado), tarifa local, degradação dos painéis e custos de manutenção. Promessas de 2-3 anos só são realistas em casos específicos de tarifa muito alta ou consumo muito elevado."},{"q":"Quantas garantias separadas tem um sistema solar?","a":"São 4: painel produto (10-12 anos defeito fabricação), painel performance (25 anos curva degradação), inversor (5-12 anos dependendo do modelo), instalação (1-5 anos mão de obra e estrutura). Vendedor que diz 25 anos no sistema todo está simplificando."},{"q":"Como saber se meu orçamento solar está inflado?","a":"Verifique 5 sinais: vida útil prometida acima de 30 anos, inversor 30-50% maior que painéis, ausência de microinversor como opção comparada, payback abaixo de 4 anos, e ''garantia de 25 anos do sistema'' sem detalhar as 4 garantias separadas. Se 3 ou mais aparecem, peça segunda opinião."}]',
  9,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL
);
