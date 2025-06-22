# H5 - Como consumidor, eu gostaria que o aplicativo fornecesse feedbacks de outros usuários sobre os produtos, para que eu tenha maior segurança em comprá-los.
## História do Usuário

# Critérios de Aceitação
- AC17 - Cada produto deve ter uma seção de Avaliações ao final da página.
- AC18 - Os consumidores devem poder avaliar os produtos com imagens e comentários escritos.
- AC19 - O aplicativo deve exibir a média das avaliações de cada produto.
- AC20 - Os fornecedores podem responder os usuários através de comentário público na própria avaliação.
  # Regras de Negócio
- RN17 - O aplicativo deve destacar os produtos com melhores avaliações.
- RN18 - Os usuários devem editar o comentário em até 1 mês após a postagem.
- RN19 - O perfil do comprador deve ser visível.


### Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida  | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto possui avaliações                   | Sim  (1)       | Produto sem avaliações (2)  |
| C2  | Avaliação com comentários claros            | Sim  (3)       | Avaliações ausentes, confusas ou irrelevantes (4)|
| C3  | Interface exibe avaliações enviadas         | Sim  (5)       | Avaliações não exibidas  (6)  |

### Tabela de Casos de Teste- História do Usuário 
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5   | Produto com avaliações, comentários claros e exibidas corretamente | Feedbacks exibidos com sucesso|
| CT2  | 2, 3, 5   | Produto sem avaliação, comentários claros e exibidas corretamente  | Produto sem feedback disponível |
| CT3  | 1, 4, 5   | Produto com avaliações mas com comentário ausente, confuso ou irrelevante| Feedback incompleto ou inválido|
| CT4  | 1, 3, 6   | Produto com avaliações, mas interface com erro na exibição  | Erro de usabilidade - feedback não exibido |

## Critérios de Aceitação
### AC17 - Cada produto deve ter uma seção de Avaliações ao final da página.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto com seção de avaliação         | Sim (1)  | Seção ausente (2)   |
| C2  | Localização da seção de avaliações     | Localizada ao final da página (3) | Seção não localizada no final da página (4) | 
| C3  | Interface exibe a seção de avaliações  | Sim  (5)  | Erro ao exibir seção (6)| 


### Tabela de Casos de Teste - AC17
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5   | Produto com seção de avaliações, localizada ao final da página e exibidas corretamente | Seção exibida corretamente|
| CT2  | 2, 3, 5   | Produto sem seção de avaliação, localizada ao final da página e exibidas corretamente  | Erro - Seção de avaliações ausente |
| CT3  | 1, 4, 5   | Produto com seção de avaliações, com a localização errada, mas sendo exibidas          | Erro de usabilidade - Seção mal posicionada|
| CT4  | 1, 3, 6   | Produto com seção de avaliações, localizada ao final da página mas falha na exibição   | Erro - Seção não exibida por falha de carregamento|

## Critérios de Aceitação
### AC18 - Os consumidores devem poder avaliar os produtos com imagens e comentários escritos.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Avaliação com imagem             | Sim (1) | Imagem ausente (2) |
| C2  | Avaliação com comentário escrito | Sim (3) | Comentário ausente (4) |
| C3  | Campo de avaliação funcional     | Sim (5) | Campo inativo ou apresentando erros (6)|


### Tabela de Casos de Teste- AC18
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,3,5  | Avaliação com imagem, comentário escrito e campo funcional | Avaliação registrada com sucesso|
| CT2  | 2,3,5  | Avaliação sem  imagem, comentário escrito e campo funcional| Avaliação registrada sem imagem|
| CT3  | 1,4,5  | Avaliação com imagem, comentário ausente e campo funcional | Erro no envio de avaliação - Comentário obrigatório|
| CT4  | 1,3,6  | Avaliação com imagem, comentário escrito e mas o sistema não permite envio| Erro - Campo inativo |


## Critérios de Aceitação
### RN18 - Os usuários devem editar o comentário em até 1 mês após a postagem.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Tentativa de edição dentro de 30 dias       | Permitido (1)| Edição Negada - tentativa após 30 dias da postagem (2) |
| C2  | Comentário existente     | Sim  (3)          | Comentário ausente  (4)    |
| C3  | Usuário autenticado     | Sim (5)           | Usuário não autenticado (6)|


### Tabela de Casos de Teste- RN18
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,3,5  | Tentativa de edição no prazo, comentário disponível para edição, usuário autenticado | Edição permitida|
| CT2  | 2,3,5  | Tentativa de edição fora do prazo, comentário disponível para edição, usuário autenticado     | Edição Negada - Prazo expirado|
| CT3  | 1,4,5  | Tentativa de edição no prazo, nenhum comentário disponível para edição, usuário autenticado | Erro - Nenhum comentário disponível para edição|
| CT4  | 1,3,6  | Tentativa de edição no prazo, comentário disponível para edição, usuário não autenticado    | Edição Negada - Usuário não autenticado |

