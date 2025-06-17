# 9. Rastreabilidade com História do Usuário 
A rastreabilidade através de histórias de usuário é uma técnica fundamental para assegurar que cada funcionalidade do sistema esteja claramente conectada às necessidades autênticas dos usuários finais. Ao descrever histórias de usuários, é viável identificar de maneira precisa quais módulos, componentes e tecnologias estão associados a cada interação. Essa metodologia oferece uma perspectiva abrangente do sistema, promovendo clareza, cooperação entre equipes e tornando mais fácil tanto o desenvolvimento quanto a manutenção da solução.


| História do Usuário | Componentes Envolvidos | Diagramas de Referência |
|----------------------|-------------------------|---------------------------|
| Como agrônoma, quero uma diferenciação clara entre os produtores disponíveis no app, para que eu possa escolher aqueles que seguem métodos agrícolas que eu aprovo. | Aplicativo Mobile (Flutter), API do Servidor (Módulo de Usuários, Módulo de Produtos), PostgreSQL | Contexto, Contêiner, Componentes |
| Como agrônoma, quero dar dicas para os produtores, para que eu possa contribuir com práticas agrícolas melhores. | Aplicativo Mobile (Flutter), API (Módulo de Mensagens), Firebase Cloud Messaging | Contexto, Contêiner, Componentes |
| Como consumidor, eu gostaria de ter a possibilidade de um contato direto com os fornecedores, para verificar pessoalmente a qualidade dos produtos. | Aplicativo Mobile (Flutter), API (Módulo de Mensagens), Firebase Cloud Messaging | Contexto, Contêiner, Componentes |
| Como produtor rural, quero cadastrar meus produtos com fotos e descrições simples, para que os consumidores saibam o que estou vendendo e de onde vem. | Aplicativo Mobile (Flutter), API (Módulo de Produtos), PostgreSQL, Firebase Storage | Contexto, Contêiner, Componentes |
| Como consumidor, gostaria que o app fornecesse feedbacks de outros usuários sobre os produtos, para ter maior segurança em comprá-los. | Aplicativo Mobile (Flutter), API (Módulo de Avaliações), PostgreSQL | Contexto, Contêiner, Componentes |
| Como consumidor, gostaria que o app permitisse pagar com pix ou cartão, para não precisar de dinheiro na hora da compra. | Aplicativo Mobile (Flutter), API (Módulo de Pedidos), Mercado Pago API, Firebase Cloud Messaging | Contexto, Contêiner, Componentes |
| Como consumidor, gostaria de um aplicativo com imagens reais dos produtos, para verificar a qualidade dos mesmos. | Aplicativo Mobile (Flutter), API (Módulo de Produtos), Firebase Storage | Contexto, Contêiner, Componentes |
| Como produtor rural, quero receber pedidos diretamente pelo app, para organizar a produção e entrega dos produtos. | Aplicativo Mobile (Flutter), API (Módulo de Pedidos), PostgreSQL, Firebase Cloud Messaging | Contexto, Contêiner, Componentes |
| Como consumidor, gostaria de comprar produtos orgânicos, para ter uma alimentação saudável. | Aplicativo Mobile (Flutter), API (Módulo de Produtos), PostgreSQL | Contexto, Contêiner, Componentes |
| Como produtor rural, quero ver comentários e avaliações dos consumidores, para saber se ficaram satisfeitos e melhorar minha oferta. | Aplicativo Mobile (Flutter), API (Módulo de Avaliações), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária free, quero visualizar produtos orgânicos com filtros de pesquisa simples. | Aplicativo Mobile (Flutter), API (Módulo de Produtos), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária free, quero salvar produtos de interesse e organizar minha lista. | Aplicativo Mobile (Flutter), API (Módulo de Listas), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária free, quero acessar dados importantes sobre os produtos. | Aplicativo Mobile (Flutter), API (Módulo de Produtos), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária free, quero dar minha opinião sobre o app. | Aplicativo Mobile (Flutter), API (Módulo de Feedback), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária premium, quero agendar sessões com nutricionista integrada. | Aplicativo Mobile (Flutter), API (Módulo de Nutricionistas), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária premium, quero receber receitas saudáveis baseadas nos produtos. | Aplicativo Mobile (Flutter), API (Módulo de Nutricionistas, Módulo de Produtos), PostgreSQL | Contexto, Contêiner, Componentes |
| Como usuária premium, quero que o sistema sugira lista de compras baseada nas receitas salvas. | Aplicativo Mobile (Flutter), API (Módulo de Listas, Módulo de Nutricionistas), PostgreSQL | Contexto, Contêiner, Componentes |
