#  “Como usuário, quero acessar minha conta pelo aplicativo utilizando e-mail e senha, para visualizar meus pedidos, avaliar produtos e realizar novas compras com segurança.” Implementação no MVP: Para o usuário acessar o aplicativo ele deverá realizar o login através do e-mail e senha.

## Funcionalidade: Autenticação de Usuário

### Diagrama de Classes  
Utiliza as classes:
- `Usuario`: contém atributos como e-mail, senha, nome, tipo de perfil e histórico de pedidos.  
- `Autenticacao`: gerencia o processo de verificação de credenciais do usuário.  
- `RepositorioUsuario`: responsável pela persistência e consulta de dados de autenticação e perfil.

### Diagrama C4 (Container)  
A funcionalidade está presente no container **Aplicativo Mobile** (Flutter), que interage com:
- **API Backend** (Node.js + Express.js): recebe credenciais e realiza a validação via serviço externo.  
- **Firebase Authentication**: sistema responsável pela verificação segura de login e autenticação do usuário via e-mail e senha.  
- **Banco de Dados** (PostgreSQL): armazena informações complementares do perfil do usuário e pedidos.

### Diagrama C4 (Componente)  
- `Tela de Login`: interface onde o usuário insere e-mail e senha para acessar sua conta.  
- `Serviço de Autenticação`: componente que envia as credenciais à API e interpreta a resposta.  
- `Validador Firebase`: integra o aplicativo com o Firebase Authentication para autenticação segura.  
- `Gerenciador de Sessão`: mantém o estado de autenticação do usuário e controle de acesso aos recursos protegidos.

