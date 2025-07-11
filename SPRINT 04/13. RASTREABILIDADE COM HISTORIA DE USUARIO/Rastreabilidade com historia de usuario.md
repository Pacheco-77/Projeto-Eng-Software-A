#  Como usuário, quero acessar minha conta pelo aplicativo utilizando e-mail e senha, para visualizar meus pedidos, avaliar produtos e realizar novas compras com segurança.” Implementação no MVP: Para o usuário acessar o aplicativo ele deverá realizar o login através do e-mail e senha.
## Implementação no MVP: Para o usuário acessar o aplicativo ele deverá realizar o login através do e-mail e senha.

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
  # Como consumidor, gostaria de comprar produtos orgânicos, para ter uma alimentação saudável.  
  ## Implementação no MVP: No perfil do consumidor, será possível navegar, adicionar ao carrinho e finalizar a compra do produto desejado, todos os produtos disponíveis tem o selo dado pelo agrônomo de que realmente é orgânico.  
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


