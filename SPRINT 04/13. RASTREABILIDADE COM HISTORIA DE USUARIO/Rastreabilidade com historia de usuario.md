## Funcionalidade: Avaliação de Produto

### Diagrama de Classes  
Utiliza as classes:
- `Produto`: representa o item que será avaliado.  
- `Avaliacao`: contém os atributos nota (1 a 5 estrelas), título, texto e imagens.  
- `Usuario`: representa o consumidor que realiza a avaliação.  
- `Moderador`: responsável por validar comentários antes da publicação.  
- `RepositorioAvaliacao`: gerencia o armazenamento e recuperação das avaliações no banco de dados.

### Diagrama C4 (Container)  
A funcionalidade faz parte do container **Aplicativo Móvel**, que se comunica com:
- **API de Backend**: recebe, valida e processa as avaliações.  
- **Banco de Dados**: armazena as avaliações, usuários e produtos com suas respectivas métricas.  
- **Serviço de Moderação**: opcional, conectado à API e responsável pela triagem de conteúdo.

### Diagrama C4 (Componente)  
- `Tela de Avaliação`: interface onde o usuário insere os dados da avaliação.  
- `Serviço de Avaliação`: responsável por enviar os dados para a API.  
- `Repositório de Avaliações`: faz a persistência e leitura no banco.  
- `Painel de Moderação` (se aplicável): onde um moderador pode aprovar ou recusar comentários antes da publicação.

