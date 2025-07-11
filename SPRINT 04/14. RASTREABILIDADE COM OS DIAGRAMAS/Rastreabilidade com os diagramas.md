# Rastreabilidade com os diagramas  


# H19 - Como possível usuário , quero me cadastrar no aplicativo informando meus dados pessoais para acessar funcionalidades como login, pedidos, avaliações e compras.
## Funcionalidade: Cadastro de Novo Usuário

### Diagrama de Classes  
Utiliza as classes:
- `Usuario`: armazena atributos como nome, nome de usuário, senha, endereço e tipo de perfil.  
- `Autenticacao`: responsável por verificar e registrar as credenciais do novo usuário.  
- `RepositorioUsuario`: realiza a persistência dos dados de cadastro no banco de dados relacional.  
- `Endereco`: classe complementar que pode armazenar dados como cidade, estado e localização.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), conectado aos seguintes sistemas e serviços:
- **API Backend** (Flutter): recebe os dados do formulário de cadastro e executa a lógica de validação.  
- **Firebase Authentication**: registra o novo usuário de forma segura com email/senha.  
- **Banco de Dados** (Firebase): armazena os dados adicionais como nome, endereço e tipo de perfil.  

### Diagrama C4 (Componente)  
- `Tela de Cadastro`: interface onde o usuário insere nome, senha, confirmação de senha, nome de usuário e endereço.  
- `Serviço de Cadastro`: componente que envia os dados para a API via requisição REST.  
- `Validador Firebase`: responsável por criar a conta no Firebase Authentication.  
- `Gerenciador de Usuário`: salva os dados complementares no banco de dados PostgreSQL.  
- `Verificador de Dados`: valida formatos, consistência e campos obrigatórios do formulário antes do envio.


#  H18 - Como usuário, quero acessar minha conta pelo aplicativo utilizando e-mail e senha, para visualizar meus pedidos, avaliar produtos e realizar novas compras com segurança.” Implementação no MVP: Para o usuário acessar o aplicativo ele deverá realizar o login através do e-mail e senha.
## Funcionalidade: Autenticação de Usuário

### Diagrama de Classes  
Utiliza as classes:
- `Usuario`: contém atributos como e-mail, senha, nome, tipo de perfil e histórico de pedidos.  
- `Autenticacao`: gerencia o processo de verificação de credenciais do usuário.  
- `RepositorioUsuario`: responsável pela persistência e consulta de dados de autenticação e perfil.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), que interage com:
- **API Backend** (Flutter): recebe credenciais e realiza a validação via serviço externo.  
- **Firebase Authentication**: sistema responsável pela verificação segura de login e autenticação do usuário via e-mail e senha.  
- **Banco de Dados** (Firebase): armazena informações complementares do perfil do usuário e pedidos.

### Diagrama C4 (Componente)  
- `Tela de Login`: interface onde o usuário insere e-mail e senha para acessar sua conta.  
- `Serviço de Autenticação`: componente que envia as credenciais à API e interpreta a resposta.  
- `Validador Firebase`: integra o aplicativo com o Firebase Authentication para autenticação segura.  
- `Gerenciador de Sessão`: mantém o estado de autenticação do usuário e controle de acesso aos recursos protegidos.
  
  ---
  # H20 - Como consumidor, gostaria de comprar produtos orgânicos, para ter uma alimentação saudável.  
  ## Funcionalidade: Compra de Produtos Orgânicos

### Diagrama de Classes  
Utiliza as classes:
- `Produto`: contém informações como nome, descrição, imagens, localização de origem e selo de certificação orgânica.  
- `Usuario`: representa o consumidor que navega e realiza compras.  
- `Pedido`: armazena os detalhes da transação (itens, valor total, status).  
- `Carrinho`: estrutura que mantém os produtos selecionados antes da finalização da compra.  
- `Agronomo`: valida produtos com o selo de autenticidade orgânica.  
- `RepositorioPedido`: gerencia o armazenamento dos pedidos no banco de dados.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), que interage com:
- **API Backend** (Flutter): processa as ações de navegação, carrinho e finalização da compra.  
- **Banco de Dados** (FireBase): armazena informações dos produtos, pedidos e usuários.  
- **Firebase Authentication**: garante que apenas consumidores autenticados possam realizar a compra.  
- **Mercado Pago API**: processa pagamentos de forma segura e integrada.  
- **Firebase Cloud Messaging**: envia notificações ao consumidor sobre status de pedidos e confirmações.  

### Diagrama C4 (Componente)  
- `Tela de Catálogo`: interface onde o usuário visualiza e filtra os produtos orgânicos disponíveis.  
- `Carrinho de Compras`: componente que mantém os itens selecionados.  
- `Tela de Finalização`: interface para confirmar detalhes da compra e realizar o pagamento.  
- `Serviço de Pedido`: envia os dados do carrinho à API e cria um novo pedido no sistema.  
- `Verificador de Selo Orgânico`: exibe visualmente a certificação feita pelo agrônomo no catálogo.  
- `Processador de Pagamento`: integra o aplicativo à API do Mercado Pago.  
- `Notificador`: componente que envia atualizações sobre o status dos pedidos via Firebase Messaging.

# H4 - Como produtor rural, quero cadastrar meus produtos com informações completas incluindo fotos, descrição detalhada e localização de origem, para que os consumidores possam conhecer o que estou vendendo e a procedência dos produtos.
## Funcionalidade: Cadastro de Produtos

### Diagrama de Classes  
Utiliza as classes:
- `Produto`: contém atributos como nome, descrição, imagens e origem geográfica.  
- `Produtor`: representa o usuário responsável pelo cadastro dos produtos.  
- `RepositorioProduto`: realiza a persistência dos dados dos produtos no banco de dados.  
- `ImagemProduto`: armazena os arquivos associados ao produto.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), integrado com os seguintes sistemas:
- **API Backend** (Flutter): processa os dados do produto recebidos do front-end.  
- **Firebase Storage**: armazena as imagens dos produtos reais enviadas pelo produtor.  
- **Banco de Dados** (Firebase): armazena as informações textuais dos produtos e dos produtores.  
- **Firebase Authentication**: garante que apenas produtores autenticados consigam realizar o cadastro.

### Diagrama C4 (Componente)  
- `Tela de Cadastro de Produto`: interface onde o produtor insere os dados do produto, incluindo descrição e imagens.  
- `Serviço de Cadastro de Produto`: componente que envia os dados via HTTP para a API.  
- `Gerenciador de Imagens`: manipula e envia os arquivos ao Firebase Storage.  
- `Repositório de Produtos`: salva os dados no PostgreSQL.  
- `Validador de Autenticação`: garante que somente usuários produtores tenham acesso ao módulo.

# Como consumidor, eu gostaria de um aplicativo com imagens reais dos produtos, para que eu possa verificar a qualidade dos produtos.
## Funcionalidade: Visualização de Imagens Reais dos Produtos

### Diagrama de Classes  
Utiliza as classes:
- `Produto`: armazena atributos como nome, descrição, origem e referências às imagens reais.  
- `ImagemProduto`: representa os arquivos de imagem associados aos produtos.  
- `Usuario`: representa o consumidor que acessa os detalhes dos produtos.  
- `RepositorioProduto`: gerencia a persistência das informações e imagens no banco de dados.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), com integração aos seguintes sistemas:
- **API Backend** (Flutter): trata requisições para exibir detalhes dos produtos.  
- **Firebase Storage**: armazena e disponibiliza as imagens reais dos produtos.  
- **Banco de Dados** (Firebase): contém as informações textuais dos produtos e links das imagens.  

### Diagrama C4 (Componente)  
- `Tela de Detalhes do Produto`: interface onde o consumidor visualiza as imagens reais e a descrição do item.  
- `Serviço de Produto`: solicita os dados do produto à API e renderiza as informações no aplicativo.  
- `Gerenciador de Imagens`: recupera os arquivos do Firebase Storage para exibição.  
- `Repositório de Produtos`: fornece os dados do produto à interface, conectando-se ao banco de dados.

# H1 - Como Agrônoma, Quero dar dicas para os produtores, para que eu possa contribuir com práticas agrícolas melhores
## Funcionalidade: Envio de Dicas Agrícolas pelo Agrônomo

### Diagrama de Classes  
Utiliza as classes:
- `Agronomo`: representa o profissional que fornece orientações e dicas agrícolas.  
- `Produto`: utilizado como referência para contextualizar as dicas enviadas.  
- `DicaAgricola`: contém os atributos da dica, como título, conteúdo e data de envio.  
- `RepositorioDicas`: gerencia o armazenamento das dicas enviadas pelo agrônomo.  
- `Produtor`: recebe as dicas e pode visualizá-las vinculadas aos seus produtos.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), com integração aos seguintes sistemas:
- **API Backend** (Node.js + Express.js): recebe e processa as dicas enviadas pelo agrônomo.  
- **Banco de Dados** (PostgreSQL): armazena os dados das dicas, produtos e relacionamentos com produtores.  
- **Firebase Authentication**: valida que apenas agrônomos autenticados possam enviar dicas.  
- **Firebase Cloud Messaging**: pode ser utilizado para notificar o produtor sobre novas dicas recebidas.

### Diagrama C4 (Componente)  
- `Tela de Feed de Produtos`: interface onde o agrônomo vê os produtos e seleciona o item para enviar dica.  
- `Componente Dar Dica`: botão abaixo de cada produto que abre o formulário de envio.  
- `Serviço de Dica`: envia os dados da dica à API para processamento e armazenamento.  
- `Repositório de Dicas`: salva as informações no banco de dados e vincula à entidade `Produto`.  
- `Notificador de Produtores`: envia alertas aos produtores sobre novas contribuições do agrônomo.

#
