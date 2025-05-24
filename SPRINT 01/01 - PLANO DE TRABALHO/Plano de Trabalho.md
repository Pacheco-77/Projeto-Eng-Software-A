  # 1. Plano de Trabalho

  | Nome do Projeto            | Vida Orgânica/ OrganoLife    |
  |----------------------------|----------------------------|
  | Versão                     | 1.0                       |
  | Status                     | Em desenvolvimento         |
  | Número de Controle SRBR-M  | 1802030407                |
  | Executor Principal         | Team APX                  |
  | Coordenador do Projeto     | Prof. Dr. Andrey Rodrigues|

## 1.1 INTRODUÇÃO
Este documento apresenta o projeto de desenvolvimento de um Minimum Viable Product (MVP) para um aplicativo mobile que conecta produtores rurais, consumidores de produtos orgânicos e profissionais de nutrição e agronomia. O projeto busca promover o acesso a alimentos orgânicos de qualidade, diretamente do campo ao consumidor.
Com o intuito de oferecer uma alimentação saudável e sustentável, o aplicativo visa solucionar a dificuldade de encontrar produtos orgânicos frescos, eliminando intermediários e valorizando pequenos produtores locais do município de Itacoatiara. A plataforma permitirá a venda direta de produtos orgânicos, e também oferecerá conteúdos educativos sobre alimentação e cultivo orgânico e proporcionará ferramentas simples para gerenciamento de vendas. Este projeto justifica-se pela oportunidade de fomentar a economia local, incentivar práticas agrícolas sustentáveis e conscientizar a população sobre hábitos alimentares mais saudáveis.

### 1.1.1 Objetivo
No presente projeto será desenvolvido um **Minimum Viable Product (MVP)**, uma versão simples de um produto com funcionalidades básicas, que tem como objetivo principal conectar **produtores rurais**, **consumidores de produtos orgânicos** e **de nutrição e agronomia**. Nele, será possível ao produtor rural vender seus produtos orgânicos diretamente aos consumidores, além de conter espaços para profissionais de nutrição e agronomia compartilharem dicas de alimentação saudável e cultivo de produtos orgânicos.

### 1.1.2 Motivação, Justificativa e Oportunidade
Muitos alimentos consumidos contêm agrotóxicos, contribuindo para uma alimentação inadequada. Este aplicativo visa quebrar o paradigma de consumo de produtos com agrotóxicos, mostrando aos consumidores que existem produtores de alimentos orgânicos e que esses produtos podem ser adquiridos diretamente pelo aplicativo.

### 1.1.3 Caracterização do Projeto
- **1.1.3.1 Classe**:
  - Este projeto é classificado como tecnológico por envolver o desenvolvimento de um App mobilee social, por promover a conexão entre os produtores rurais, consumidores e profissionais da área, assim, incentivando uma alimentação saudávele fortalecendo a economia local.
- **1.1.3.2 Enquadrabilidade**:
  - O projeto se enquadra no setor de agronegócio com foco na comercialização de produtos orgânicos, e na área de sustentabilidade por apoiar práticas ecológicas no cultivo.
- **1.1.3.3 Tipo**:
  - O projeto consiste no desenvolvimento de um aplicativo mobile, com a criação de um MVP para testar e validar a solução.
## 1.2 INFORMAÇÕES GERAIS
Este projeto pretende desenvolver um aplicativo que conecte alimentos orgânicos diretamente do campo ao consumidor com apenas um clique. Uma limitação é a dependência de internet, considerando que muitos agricultores no campo não têm acesso às mesmas tecnologias. Será o primeiro aplicativo a entregar alimentos totalmente orgânicos ao consumidor final em **Itacoatiara**.

### 1.2.1 Escopo Geral
O projeto busca desenvolver um aplicativo mobile para conectar **produtores rurais**, **agrônomos/profissionais de saúde alimentar** e **consumidores de produtos orgânicos**, permitindo a venda e compra de produtos naturais e possibilitando aos produtores expor seus produtos à venda.

#### 1.2.2 Escopo Específico
- **Cadastro e Gerenciamento dos perfis de usuários**:
  - Cadastro de produtores rurais, consumidores e profissionais (nutricionistas e agrônomos) com informações básicas (nome, contato, localização, certificações orgânicas para produtores).
  - Gerenciamento de perfil, permitindo edição de dados e inclusão de fotos ou descrições dos produtos.
- **Catálogo de Produtos**:
  - Funcionalidade para produtores cadastrarem e gerenciarem seus produtos (nome, descrição, preço, quantidade disponível no estoque, fotos e informações de cultivo).
  - Exibição de produtos para consumidores com filtros (categoria, localização, preço, certificação orgânica).
- **Gerenciamento de Pedidos e pagamentos**:
  - Interface para os consumidores selecionarem os produtos a qual desejam adquirir, adicionar no carrinho e finalizar a compra.
  - Integração com banco para pagamentos (ex: cartão e pix).
  Notificações de status do pedido (Confirmado, em preparo, enviado), para produtores e consumidores.
- **Logística de entrega**:
  - Configuração de opções de entrega (entrega direta por produtores, pontos de retirada ou entregadores locais).
  - Sistema de rastreamento básico para acompanhar o status da entrega.
- **Espaço educativo**:
  - Sessão para profissionais como nutricionistas e agrônomos publicarem dicas sobre alimentação saudável e cultivo orgânico.
  - Comentários para a interação entre usuários e profissionais.
- **Painel de gerenciamento para produtores**:
  - Ferramenta simples para controle de estoque, pedidos e comunicação com os clientes.
  - Relatórios básicos de vendas e desempenho.

### 1.2.3 Escopo Negativo
- **Integração com redes sociais para login ou compartilhamento**: O aplicativo não permitirá login via redes sociais (ex: Facebook, Google) nem compartilhamento direto de produtos ou conteúdos em plataformas sociais.
- **Suporte a vendas de produtos não orgânicos**: O sistema será exclusivo para produtos certificados como orgânicos, não incluindo alimentos ou itens produzidos com agrotóxicos ou métodos convencionais.
- **Aplicativo para desktop**: O projeto focará exclusivamente em um aplicativo mobile, sem desenvolvimento de uma versão para computadores ou navegadores web.
- **Funcionalidades avançadas de inteligência artificial**: Não serão implementadas ferramentas de IA, como recomendações personalizadas de produtos ou análise preditiva de vendas.
- **Entregas internacionais ou intermunicipais**: O sistema será limitado a entregas dentro do município de Itacoatiara, sem suporte para envios fora dessa área.
- **Gerenciamento financeiro avançado**: O aplicativo não incluirá funcionalidades como controle de impostos, emissão de notas fiscais ou integração com sistemas contábeis para produtores.
- **Moderação automática de conteúdos educativos**: Conteúdos postados por profissionais (ex: dicas de nutrição ou cultivo) não passarão por moderação automatizada, sendo responsabilidade dos autores garantir a qualidade.

### 1.2.4 Ambiente de Desenvolvimento
As tecnologias a serem utilizadas no desenvolvimento do projeto estão descritas no quadro abaixo:  
 | Componente            | Tecnologia/Ferramenta    |
  |----------------------------|----------------------------|
  | Metodologia                     | Scrum com sprints                       |
  | Gerenciamento de Backlog                     | Github         |
  | Repositório de Código  | Github                |
  | Modelagem de Software         | Draw.io (diagrama de classes, fluxo de telas)                  |
  | Desenvolvimento do MVP     | xxxxx|

### 1.2.5 Características Inovadoras do Projeto
- **Compra direta do produtor**: Elimina intermediários, garantindo frescor, preço justo e apoio à produção local.
- **Transparência total**: Detalhes sobre origem, cultivo e certificações orgânicas de cada produto.
- **Entrega eficiente**: Rede de entregadores locais e pontos de retirada estratégicos.
- **Recompensas ecológicas**: Pontos por compras sustentáveis, trocáveis por descontos e brindes.
- **Educação sobre alimentação saudável**: Conteúdos educativos e dicas direto dos produtores.
- **Facilidade para pequenos agricultores**: Ferramentas simples para gerenciar pedidos, estoques e entregas pelo celular.

### 1.2.6 Resultados Esperados
- **Conexão direta**: Liga produtores de alimentos 100% orgânicos aos consumidores, garantindo compras justas e sustentáveis.
- **Menos intermediários**: Maior lucro para o produtor e preços acessíveis para o consumidor.
- **Valorização dos pequenos produtores**: Dados e relatos sobre a origem dos produtos disponíveis na plataforma.
- **Entrega eficiente**: Sistema logístico integrado com entregas acessíveis e pontos de retirada estratégicos.
- **Consciência alimentar**: Conteúdos educativos para incentivar hábitos saudáveis e sustentáveis.
- **Facilidade na gestão**: Ferramentas simples para controle de pedidos, estoque e relacionamento com clientes.
- **Fidelização sustentável**: Recompensas para consumo consciente e ecológico.

## 1.3 METODOLOGIA DO PROJETO

### 1.3.1 Estrutura do Projeto
#### Fases do Projeto
1. **Conceito/Ideia**  
   - Dificuldade para encontrar alimentos saudáveis e de qualidade.  
   - Público-alvo: Pessoas que valorizam alimentos orgânicos como estilo de vida.
2. **Análise de Concorrentes e Soluções**  
   - Identificação da inovação e diferenciação do projeto.  
   - Definição dos perfis de usuários.
3. **Levantamento de Requisitos**  
   - Refinamento do backlog do produto no GitHub.  
   - Definição de critérios de aceitação e regras de negócio para as funcionalidades.
4. **Projeto e Arquitetura**  
   - Modelagem detalhada das telas e fluxo de navegação.  
   - Definição da arquitetura do sistema.  
   - Criação de diagramas de classes e estrutura de dados.  
   - Revisão do backlog e definição de prioridades para o MVP.
5. **Projeto dos Casos de Teste**  
   - Identificação de cenários de teste para as principais funcionalidades.  
   - Criação de casos de teste baseados nas histórias do usuário.  
   - Definição de critérios de sucesso para cada funcionalidade.
6. **Desenvolvimento do MVP**  
   - Implementação das funcionalidades essenciais no framework [X].  
   - Testes e ajustes iterativos.  
   - Apresentação da primeira versão do MVP.  
   - Feedback e melhorias com base em testes e validação dos usuários.

### 1.3.2 Equipe de Projeto: Papéis e Responsabilidades dos Integrantes
| Função                        | Responsabilidades |
|------------------------------|-------------------|
| **Product Owner (PO)**       | - Define a visão do produto e prioriza o backlog.<br>- Levanta requisitos com produtores, consumidores e profissionais.<br>- Valida entregas do MVP com base nos critérios de aceitação. |
| **Scrum Master**             | - Facilita reuniões ágeis (Sprint Planning, Daily Stand-ups, Retrospectivas).<br>- Remove impedimentos que afetam o progresso da equipe.<br>- Garante a adesão à metodologia Scrum. |
| **Desenvolvedor Full-Stack (2 membros)** | - Implementa as funcionalidades do aplicativo (front-end e back-end) no framework definido.<br>- Integra APIs de pagamento e logística.<br>- Realiza testes unitários e ajustes iterativos. |
| **Designer de UX/UI (2 membros)**        | - Cria wireframes, protótipos e design das telas do aplicativo.<br>- Garante uma interface intuitiva para produtores e consumidores.<br>- Valida a usabilidade com usuários-alvo. |

### 1.3.3 Backlog do Sprint
O backlog do sprint irá conter as histórias de usuário e tarefas prioritárias para cada ciclo de desenvolvimento, retiradas do backlog do produto mantido repositório do projeto no GitHub.

### 1.3.4 Controle de Mudanças
O controle de mudanças definirá o processo para gerenciar alterações no escopo, requisitos ou cronograma do projeto, garantindo alinhamento com os objetivos do MVP. O processo inclui:

1. **Solicitação de Mudança**: Qualquer membro da equipe ou stakeholder pode propor uma mudança (ex: nova funcionalidade, ajuste em requisito).
3. **Aprovação**: Mudanças são aprovadas pelo Product Owner em consenso com a equipe durante a Sprint Review ou em reunião extraordinária, se urgente.
4. **Implementação**: Mudanças aprovadas são adicionadas ao backlog do produto, priorizadas e implementadas no sprint seguinte.
5. **Documentação**: Todas as mudanças são registradas no GitHub, com justificativa, impacto e status.

### 1.3.5 Gerenciamento de Comunicação
O gerenciamento de comunicação irá definir como a equipe interage durante o projeto para garantir alinhamento e produtividade. Principais elementos:

- **Reuniões de Planejamento (Sprint Planning)**: No início de cada sprint, a equipe define as tarefas e prioridades.
- **Daily Stand-ups (Reuniões Diárias)**: Curtas reuniões diárias (5 a 10 min) para sincronizar o progresso e remover impedimentos.
- **Sprint Review (Revisão da Sprint)**: No final da sprint, a equipe apresenta o que foi feito.
- **Sprint Retrospective (Retrospectiva da Sprint)**: Discussão sobre o que funcionou bem e o que poderá ser melhorado.
- **Ferramentas de Comunicação**: O grupo pode usar Discord, Slack ou WhatsApp para conversas rápidas.
