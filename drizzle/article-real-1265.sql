-- Article real puxado do WordPress (post ID 1265)
-- Source: https://www.solarjugaad.com.br/como-comprar-energia-solar-passo-a-passo-174-instalacoes/
-- Imported 2026-05-10 — content fiel sem invenção

INSERT OR REPLACE INTO categories (slug, name, description, parent_slug) VALUES (
  'energia-solar-residencial',
  'Energia Solar Residencial',
  'Conteúdo técnico ancorado em dados reais de 174+ instalações entregues em Campinas e Jundiaí.',
  NULL
);

INSERT INTO articles (
  id, slug, title, meta_title, meta_description, summary, content,
  category, tags, author_slug, author_name, author_url,
  status, published_at, updated_at, created_at, indexnow_sent,
  hero_image_url, key_takeaways, faq, reading_time_min, aggregate_rating,
  citation_score, cluster_pillar_slug, verify_pass_rate, verify_report_url
) VALUES (
  '01KR7ZFHC0EDXARAMAPSJZ4216',
  'como-comprar-energia-solar-passo-a-passo-174-instalacoes',
  'Como comprar energia solar passo a passo (174 instalações)',
  'Como comprar energia solar passo a passo — 174 instalações Jugaad',
  'A maioria dos novatos imagina que comprar solar é decidir num dia, instalar na semana seguinte e economizar no próximo mês. Falso.',
  'Checklist das 7 etapas que toda casa percorre, na ordem que evita o erro mais comum. Baseado em 174 instalações entregues pela Jugaad em Campinas e Jundiaí.',
  '<blockquote>
<p><em>Na Jugaad já passamos por </em><em>174 instalações solares residenciais</em><em> em Campinas e Jundiaí — desde a análise da primeira conta de luz até a troca do relógio bidirecional. Esse post é o checklist das 7 etapas que toda casa percorre, na ordem que evita o erro mais comum: pular a 5ª etapa e descobrir, semanas depois, que perdeu 3 semanas e R$ 2 mil em adequação não prevista. Sou </em><em>Laura Amorim</em><em>, fundadora da Jugaad.</em></p>
</blockquote>
<aside class="key-takeaways" aria-label="O que você vai aprender">
<strong>Em 7 bullets — uma por etapa:</strong></p>
<ul>
<li><strong>Análise da conta de luz</strong> — mediana de 12 meses (não o mês atual)</li>
<li><strong>Dimensionamento</strong> — kWp × consumo × irradiação local (Campinas ≠ Manaus)</li>
<li><strong>3 orçamentos comparáveis</strong> — regra de ouro: mesmo escopo, mesma marca de painel</li>
<li><strong>Anatomia do orçamento</strong> — separar kit + mão de obra + projeto + ART</li>
<li><strong>Adequação prévia do poste</strong> — passo silencioso que reprova vistoria depois</li>
<li><strong>Homologação na concessionária</strong> — documentação + RT do engenheiro</li>
<li><strong>Vistoria + troca do relógio</strong> — só aqui o sistema começa a economizar</li>
</ul>
</aside>
<h2>Antes de começar — quanto tempo dura todo o processo?</h2>
<p>A maioria dos novatos imagina que comprar solar é decidir num dia, instalar na semana seguinte e economizar no próximo mês. Falso. <strong>O processo completo, da decisão à conta de luz baixa, leva entre 60 e 120 dias</strong> — dependendo da concessionária da sua região e da agenda da empresa instaladora. Nas 174 instalações Jugaad, o tempo médio foi de 75 dias.</p>
<p>E tem mais um ponto que assusta o iniciante: <strong>dos 75 dias, só ~3 são de obra física na sua casa</strong>. O resto é projeto, aprovação, homologação, vistoria. É processo, não obra.</p>
<p>Vamos pelos 7 passos na ordem certa:</p>
<h2>Passo 1 — Análise da conta de luz: mediana de 12 meses, não o mês atual</h2>
<p>Tem dois jeitos de errar logo no começo:</p>
<ul>
<li><strong>Jeito 1:</strong> olhar só a conta do último mês (&#8220;paguei R$ 480 mês passado, então preciso de um sistema que gere isso&#8221;) → <strong>errado</strong>, porque o consumo varia muito ao longo do ano (verão com ar-condicionado vs. inverno só com chuveiro)</li>
<li><strong>Jeito 2:</strong> confiar no instalador que vai te perguntar &#8220;qual o seu consumo médio?&#8221; e aceitar o número que ele estimar pelo VA do disjuntor → <strong>errado</strong>, porque o instalador tende a sobre-dimensionar (sistema maior = orçamento maior = comissão maior)</li>
</ul>
<p><strong>O jeito certo:</strong> pegar <strong>as últimas 12 contas de luz</strong> (ou login no app da concessionária — a maioria mostra histórico de 12 meses) e calcular a <strong>mediana mensal de consumo em kWh</strong>. Mediana, não média — porque a média é puxada pra cima por 1 ou 2 meses extremos.</p>
<p>Se você tem um pico em fevereiro (R$ 800) e R$ 200 nos outros 11 meses, sua mediana é R$ 200, sua média é R$ 250. <strong>Dimensione pela mediana, não pela média.</strong></p>
<blockquote>
<p>⚡ <strong>Dica prática:</strong> essa diferença em sistema bifásico médio brasileiro pode dar R$ 5.000-8.000 a mais no orçamento se você dimensionar errado pela média. É barato fazer essa conta antes de pedir orçamento.</p>
</blockquote>
<aside class="ebook-quote">
<div class="ebook-quote-header">
<span class="ebook-quote-icon">📖</span><br />
<span class="ebook-quote-source">Trecho do meu ebook — Bônus &#8220;Cliente Ideal&#8221;</span>
</div>
<blockquote class="ebook-quote-body"><p>
&#8220;O cliente ideal pra solar é aquele que paga conta acima de R$ 350/mês na mediana de 12 meses, tem casa própria (alvará no nome), tem disponibilidade de payback em 4-7 anos, e — o mais importante — está comprando solar pelo motivo certo (economia + autonomia), não por moda. Quem compra solar por status frequentemente cancela durante o processo de homologação.&#8221;
</p></blockquote>
<div class="ebook-quote-cta">
<a href="https://pay.kiwify.com.br/NuAR78d" class="btn btn-primary">Quer o capítulo completo? Eu, Gerente Solar — R$97 (ou 12x R$10,03)</a>
</div>
</aside>
<h2>Passo 2 — Dimensionamento: kWp × consumo × irradiação local</h2>
<p>Com a mediana mensal em mãos, vem a equação básica:</p>
<blockquote>
<p><strong>kWp do sistema = (consumo mensal kWh ÷ 30) ÷ irradiação solar diária local (HSP)</strong></p>
</blockquote>
<p>HSP (Horas de Sol Pleno) varia muito por região:</p>
<table>
<thead>
<tr>
<th>Região</th>
<th>HSP médio anual</th>
<th>Exemplo</th>
</tr>
</thead>
<tbody>
<tr>
<td>Sul (RS, SC)</td>
<td>4,2 &#8211; 4,8</td>
<td>Porto Alegre 4,4</td>
</tr>
<tr>
<td>Sudeste (SP, RJ, MG)</td>
<td>4,8 &#8211; 5,5</td>
<td>Campinas 5,1</td>
</tr>
<tr>
<td>Centro-Oeste (GO, MT)</td>
<td>5,5 &#8211; 6,0</td>
<td>Brasília 5,8</td>
</tr>
<tr>
<td>Nordeste (BA, PE, CE)</td>
<td>5,8 &#8211; 6,5</td>
<td>Petrolina 6,3</td>
</tr>
<tr>
<td>Norte (AM, PA)</td>
<td>4,0 &#8211; 5,0</td>
<td>Manaus 4,5 (mais nublado)</td>
</tr>
</tbody>
</table>
<p><strong>Exemplo prático:</strong> consumo mediano 400 kWh/mês em Campinas (HSP 5,1):<br />
&#8211; (400 ÷ 30) ÷ 5,1 = 13,3 ÷ 5,1 ≈ <strong>2,6 kWp</strong><br />
&#8211; Em painéis de 550W: 2.600 ÷ 550 ≈ <strong>5 painéis</strong></p>
<p>Adicione <strong>margem de segurança de 15-25%</strong> para perdas (sujeira, sombreamento parcial, eficiência do inversor) e considere o crescimento de consumo futuro (carro elétrico, ar-condicionado novo). <strong>3,5 kWp / 7 painéis</strong> seria a recomendação realista para esse caso.</p>
<h2>Passo 3 — Os 3 orçamentos comparáveis (regra de ouro: mesmo escopo)</h2>
<p>Esse é onde 90% das pessoas erram. Pedem 3 orçamentos com escopos completamente diferentes (uma empresa cota com painel chinês de marca obscura, outra com painel JinkoSolar Tier 1, outra com painel Trina) e depois ficam confusas comparando preço.</p>
<p><strong>Regra de ouro:</strong> quando pedir orçamento, especifique <strong>o que você quer cotado</strong>. Por exemplo:</p>
<blockquote>
<p>&#8220;Por favor, orçar sistema de 3,5 kWp com painel <strong>JinkoSolar 550W</strong> e <strong>microinversor APsystems</strong> (modelo X). Inversor incluso, mão de obra inclusa, padrão de entrada não incluído. Garantia mínima 12 meses na instalação.&#8221;</p>
</blockquote>
<p>Os 3 orçamentos voltam <strong>comparáveis</strong>. A diferença entre eles vai ser margem da empresa, não diferença de produto. Aí sim você compara <strong>preço × confiança × prazo</strong>.</p>
<h2>Passo 4 — Anatomia do orçamento (separar 4 componentes)</h2>
<p>Um orçamento solar honesto tem 4 componentes claros:</p>
<ol>
<li><strong>Kit (equipamentos):</strong> painéis + inversor/microinversor + estrutura + cabos + DPS solar + disjuntor solar (40-55% do total)</li>
<li><strong>Mão de obra:</strong> instalação física no telhado (15-25% do total)</li>
<li><strong>Projeto + ART:</strong> engenheiro eletricista assina ART (Anotação de Responsabilidade Técnica) e gera o projeto pra concessionária (5-10% do total)</li>
<li><strong>Homologação + acompanhamento:</strong> processo junto à concessionária + vistoria + ativação (10-15% do total)</li>
</ol>
<blockquote>
<p>⚠️ <strong>Sinal de alerta:</strong> se o orçamento vem como &#8220;TUDO INCLUSO R$ 18.500&#8221; sem decompor os 4 componentes, <strong>peça pra decompor por escrito</strong>. Empresa que não decompõe geralmente está embutindo margem alta em algum item escondido.</p>
</blockquote>
<h2>Passo 5 — Adequação prévia do padrão de entrada (o passo que reprovou 100% das minhas vistorias)</h2>
<p>Aqui é o passo que MAIS vejo cliente novato pular. E é exatamente o passo que <strong>reprovou 100% das vistorias Jugaad</strong> quando eu não fazia ele primeiro.</p>
<p>Antes de fechar contrato com a instaladora solar, <strong>separadamente</strong> confira se o seu padrão de entrada (poste com relógio + disjuntor) está conforme as normas da sua concessionária. Se não estiver, você precisa adequar <strong>antes</strong> de instalar a solar — senão a vistoria final reprova e você fica com sistema instalado mas inativo por semanas.</p>
<aside class="see-also" aria-label="Veja também">
<strong>Pillar técnico do passo 5:</strong><br />
👉 <a href="/vistoria-solar-reprovada-pelo-poste-3-motivos-criticos-174-casos/">Vistoria solar reprovada pelo poste? 3 motivos críticos (174 casos)</a><br />
</aside>
<h2>Passo 6 — Homologação na concessionária (documentação + RT)</h2>
<p>A empresa instaladora monta o pacote de documentos e envia pra concessionária. Essa fase tem 2 partes:</p>
<ul>
<li><strong>Aprovação técnica</strong> (engenheiro da concessionária revisa o projeto, cabos, dimensionamento, segurança)</li>
<li><strong>Aprovação comercial</strong> (cadastro no sistema da concessionária, criação do contrato de geração distribuída — Lei 14.300)</li>
</ul>
<p>Tempo típico: <strong>15 a 45 dias</strong> dependendo da concessionária. Na CPFL Piratininga (Campinas/Jundiaí), em 2026 o tempo médio está em ~30 dias úteis.</p>
<p>Você não faz nada aqui — a empresa instaladora cuida. Só acompanha.</p>
<h2>Passo 7 — Vistoria final + troca do relógio bidirecional</h2>
<p>Depois do projeto aprovado E da instalação física feita, a concessionária manda um técnico vistoriar fisicamente. Ele olha <strong>o seu poste</strong> (não os painéis) e — se tudo estiver OK (passo 5 feito direito) — autoriza a <strong>troca do relógio antigo pelo modelo bidirecional</strong>.</p>
<p>O relógio bidirecional é o que conta tanto a energia que você consome da rede quanto a que você injeta nela. Sem ele, o seu sistema solar <strong>gera</strong> energia mas você <strong>não recebe</strong> os créditos.</p>
<p>Depois da troca:<br />
&#8211; <strong>Liga o disjuntor solar</strong><br />
&#8211; <strong>Sistema começa a operar de verdade</strong><br />
&#8211; <strong>Próxima conta de luz já vem com créditos</strong></p>
<blockquote>
<p>💡 Esse é o ÚNICO momento real em que o sistema &#8220;começa a economizar&#8221;. Antes disso (mesmo que os painéis estejam fisicamente instalados há semanas), você está pagando conta cheia. Por isso o <strong>timing dos passos 5-7 é crítico</strong> — qualquer reprova adiciona 2-3 semanas ao processo.</p>
</blockquote>
<h2>Bônus — quanto custa hoje (referência maio/2026)</h2>
<p>Para sistema bifásico residencial brasileiro padrão (Campinas/Jundiaí, CPFL Piratininga):</p>
<table>
<thead>
<tr>
<th>Sistema</th>
<th>Painéis (550W)</th>
<th>Custo total</th>
<th>Payback típico</th>
</tr>
</thead>
<tbody>
<tr>
<td>2,2 kWp (~R$ 200/mês conta)</td>
<td>4 painéis</td>
<td>R$ 11.000 &#8211; R$ 14.000</td>
<td>5-6 anos</td>
</tr>
<tr>
<td>3,3 kWp (~R$ 350/mês conta)</td>
<td>6 painéis</td>
<td>R$ 14.500 &#8211; R$ 18.500</td>
<td>4-5 anos</td>
</tr>
<tr>
<td>5,5 kWp (~R$ 600/mês conta)</td>
<td>10 painéis</td>
<td>R$ 22.000 &#8211; R$ 27.000</td>
<td>4-5 anos</td>
</tr>
<tr>
<td>8,8 kWp (~R$ 950/mês conta)</td>
<td>16 painéis</td>
<td>R$ 32.000 &#8211; R$ 39.000</td>
<td>4-5 anos</td>
</tr>
</tbody>
</table>
<p>Variações por região: <strong>Norte/Nordeste tendem a ser ~10% mais baratos</strong> (mais HSP, menos painel pra mesmo kWp), <strong>Sul tende a ser ~5-10% mais caro</strong> (HSP menor + impostos estaduais maiores).</p>
<h2>Perguntas frequentes</h2>
<details>
<summary><strong>Quanto tempo demora todo o processo, da decisão à primeira conta com economia?</strong></summary>
<p>Entre 60 e 120 dias, dependendo da agenda da concessionária e da empresa instaladora. Média Jugaad em 174 instalações: 75 dias. Os passos 6 (homologação) e 7 (vistoria + troca de relógio) são os que mais variam — sua decisão e a obra física somam só ~10-15 dias do total.<br />
</details>
<details>
<summary><strong>Posso financiar todo o processo? Quem oferece?</strong></summary>
<p>Sim. Bancos com linha solar específica: BV Financeira (mais agressivo), Santander, Sicredi, Sicoob. Linhas verdes do BNDES via banco repassador. Empresas instaladoras grandes têm parcerias com fintechs (Solfácil, Ecori). Atenção: <strong>tempo de carência</strong> — o financiamento começa a ser cobrado antes do sistema gerar (passo 7). Negocie carência de 60-90 dias com o banco para alinhar com o cronograma do processo.<br />
</details>
<details>
<summary><strong>O que acontece se a vistoria reprovar?</strong></summary>
<p>A concessionária não troca o relógio. Você precisa adequar o que foi reprovado (geralmente o padrão de entrada — passo 5) e solicitar nova vistoria. Tempo entre vistorias: 2-3 semanas. Esse é o motivo de fazer o passo 5 ANTES de instalar os painéis — assim você não fica com sistema parado esperando reprovação.<br />
</details>
<details>
<summary><strong>Vale a pena comprar painéis &#8220;Tier 1&#8221; caros ou painéis chineses mais baratos resolvem?</strong></summary>
<p>Tier 1 (Jinko, Trina, Canadian, JA Solar) tem garantia de fábrica de 12 anos no produto + 25 anos de degradação linear (mantém ≥80% de eficiência aos 25 anos). Painéis sem Tier 1 podem economizar 20% no kit, mas: garantia menor, risco de fabricante sumir do mercado, eficiência cai mais rápido. Em 174 instalações Jugaad, sempre uso Tier 1 — diferença de R$ 1.500-3.000 no kit total que se paga em economia consistente nos 25 anos.<br />
</details>
<details>
<summary><strong>Preciso de algum tipo de manutenção depois de instalado?</strong></summary>
<p>Limpeza dos painéis 1-2× ao ano (água + pano de microfibra, sem produto químico — só remove poeira que reduz geração ~5-15%). Inspeção visual do inversor 1× ao ano (luzes, ruído, leitura de erro no app). A cada 5 anos vale chamar técnico pra reapertar conexões e medir resistência de aterramento. Manutenção total: ~R$ 200-400/ano. Painéis duram 25+ anos, inversor 8-12 anos (precisa trocar 1× ao longo da vida do sistema).<br />
</details>
<h2>Conclusão</h2>
<p>Comprar energia solar é processo, não obra. Os 7 passos seguidos na ordem certa — começando pela mediana de 12 meses da conta de luz e terminando na troca do relógio bidirecional — protegem você de:</p>
<ul>
<li><strong>Sobre-dimensionamento</strong> (passos 1-2)</li>
<li><strong>Cotações incomparáveis</strong> (passos 3-4)</li>
<li><strong>Reprova de vistoria por padrão de entrada</strong> (passo 5 — onde 100% das reprovas Jugaad acontecem)</li>
<li><strong>Atraso no início da economia</strong> (passos 6-7)</li>
</ul>
<p>O segredo é fazer <strong>um passo de cada vez, na ordem, sem pular</strong>. E lembrar: você está comprando um sistema que vai durar 25+ anos. <strong>Compre solar consciente</strong> — vale a pena gastar 75 dias de processo pra acertar.</p>
<hr>
<p><em>Quer aplicar essas 7 etapas na </em><em>sua</em><em> conta de luz, com análise personalizada do consumo + dimensionamento sob medida? O </em><em>Eng. Hélio</em><em> (consultor IA exclusivo do tier Ouro — R$297 ou 12x R$30,72) faz a análise completa da sua conta. <a href="https://pay.kiwify.com.br/MjtyJGb">Ver no Kiwify</a> — ou começa pelo ebook </em><em>Eu, Gerente Solar</em><em> (R$97), que traz o checklist passo a passo. <a href="https://pay.kiwify.com.br/NuAR78d">Kiwify Bronze</a></em></p>
<p><strong>P.S.</strong> — esse processo de 7 passos parece longo na primeira leitura, mas é exatamente o que separa quem instala solar uma vez bem-feito de quem instala solar e fica 6 meses brigando com instalador, banco e concessionária. Faz a sua planilha de mediana de 12 meses HOJE — antes mesmo de pedir o primeiro orçamento. Esse é o investimento de tempo que mais paga em retorno.</p>
			</div><!-- .entry-content .clear -->
</div>
</article><!-- #post-## -->
	        <nav class="navigation post-navigation" role="navigation" aria-label="Post navigation">
	                <span class="screen-reader-text">Post navigation</span>
	                <div class="nav-links"><div class="nav-previous"><a title="Cabo de alumínio no padrão de entrada solar: quando funciona e quando vira risco"href="https://www.solarjugaad.com.br/cabo-de-aluminio-no-padrao-de-entrada-solar-quando-funciona-e-quando-vira-risco/" rel="prev"><span class="ast-left-arrow">&larr;</span> Post anterior</a></div><div class="nav-next"><a title="Glossário energia solar: 12 termos técnicos traduzidos por engenheira"href="https://www.solarjugaad.com.br/glossario-energia-solar-12-termos-tecnicos-traduzidos-por-engenheira/" rel="next">Post seguinte <span class="ast-right-arrow">&rarr;</span></a></div></div>
	        </nav>			</main><!-- #main -->
	</div><!-- #primary -->
	<div class="widget-area secondary" id="secondary" itemtype="https://schema.org/WPSideBar" itemscope="itemscope">
	<div class="sidebar-main" >
		<aside id="recent-posts-2" class="widget widget_recent_entries">
		<h2 class="widget-title">Posts recentes</h2><nav aria-label="Posts recentes">
		<ul>
											<li>
					<a href="https://www.solarjugaad.com.br/risco-de-incendio-em-inversor-string-vs-microinversor-o-que-a-engenharia-mostra/">Risco de incêndio em inversor string vs microinversor: o que a engenharia mostra</a>
									</li>
											<li>
					<a href="https://www.solarjugaad.com.br/rotina-diaria-depois-de-instalar-energia-solar-o-que-muda-na-vida-do-dono/">Rotina diária depois de instalar energia solar: o que muda na vida do dono</a>
									</li>
											<li>
					<a href="https://www.solarjugaad.com.br/perfil-do-cliente-ideal-para-energia-solar-quem-ganha-quem-perde-174-casos/">Perfil do cliente ideal para energia solar: quem ganha, quem perde (174 casos)</a>
									</li>
											<li>
					<a href="https://www.solarjugaad.com.br/substancias-toxicas-no-painel-solar-e-saude-publica-o-que-e-mito-e-o-que-merece-atencao/">Substâncias tóxicas no painel solar e saúde pública: o que é mito e o que merece atenção</a>
									</li>
											<li>
					<a href="https://www.solarjugaad.com.br/pegada-de-carbono-da-familia-com-energia-solar-156-arvores-equivalentes-em-25-anos/">Pegada de carbono da família com energia solar: 156 árvores equivalentes em 25 anos</a>
									</li>
					</ul>
		</nav></aside>
	</div><!-- .sidebar-main -->
</div><!-- #secondary -->
	</div> <!-- ast-container -->
	</div><!-- #content -->',
  'energia-solar-residencial',
  '["pillar","como-comprar-solar","174 instalacoes","passo-a-passo","CPFL","homologacao"]',
  'laura-amorim',
  'Laura Amorim',
  'https://solarjugaad.com.br/sobre',
  'published',
  '2026-05-03T15:59:53.000Z',
  '2026-05-03T15:59:53.000Z',
  '2026-05-03T15:59:53.000Z',
  0,
  NULL,
  NULL,
  NULL,
  10,
  NULL,
  NULL,
  NULL,
  NULL,
  NULL
);

