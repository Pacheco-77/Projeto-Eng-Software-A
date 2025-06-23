# H4 - Como produtor rural, quero cadastrar meus produtos com fotos e descrições simples, para que os consumidores saibam o que estou vendendo e de onde vem.

# Critérios de Aceitação
| Código | Descrição |
|--------|-----------|
| AC14   | O formulário deve conter os campos obrigatórios: Nome (Varchar (100)), Descrição (tipo Text), Estoque disponível (inteiro positivo) e Preço dos produtos ( decimal com 2 casas decimais). |
| AC15   | Deve ser possível adicionar ao menos uma foto por produto. |
| AC16   | O produto deve ser vinculado automaticamente ao perfil do produtor. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN14   | Apenas produtores autenticados podem cadastrar produtos. |
| RN15   | Produtos com campos obrigatórios não preenchidos não podem ser salvos. |
| RN16   | Produtos sem estoque (quantidade = 0) ficam ocultos para consumidores. |
  
# Critérios de Aceitação
### AC14 - O formulário deve permitir incluir nome, descrição, quantidade disponível e preço.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida | Classe Inválida    |
|-----|---------------------------------------------|----------------|------------------|------------------|
| C1  | Campo nome e descrição        | Campos preenchidos corretamente (1)  | Nome ausente(2) | Descrição ausente (3)   |
| C2  | Campo quantidade disponível e preço | Campos preenchidos corretamente (4) | Quant. disponível ausente (5) |  Preço ausente (6)|
| C3  | Todos os campos preenchidos e visíveis na interface  | Sim  (7)  | Um campo não exibido na interface (8)| Layout desorganizado (9)|

### Tabela de Casos de Teste - AC14
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,4,7 | Todos os campos preenchidos corretamente e visíveis na interface | Produto cadastrado e exibido com sucesso|
| CT2  | 2,4,7 | Nome ausente, demais campos preenchidos corretamente e visíveis na interface| Erro no Cadastro - Campo nome ausente |
| CT3  | 3,4,7 | Descrição ausente, demais campos preenchidos corretamente e visíveis na interface|  Erro no Cadastro - Descrição ausente |
| CT4  | 1,5,7 | Quantidade disponível ausente, demais campos preenchidos corretamente e visíveis na interface| Erro no Cadastro - Quantidade disponível ausente |
| CT5  | 1,6,7 | Preço ausente, demais campos preenchidos corretamente e visíveis na interface|  Erro no Cadastro - Preço ausente|
| CT6  | 1,4,8 | Campos preenchidos corretamente, mas erro na exibição de um campo |  Erro de usabilidade - Falha na exibição de dados |
| CT7  | 1,4,9 | Campos preenchidos corretamente, mas layout desalinhado| Erro de usabilidade – layout comprometido|

## Critérios de Aceitação
### AC15 - Deve ser possível adicionar ao menos uma foto por produto.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Upload de foto          | Foto enviada com sucesso (1)| Nenhuma foto enviada (2) |
| C2  | Quantidade de fotos ≥ 1 | Sim  (3)          | Foto ausente  (4)       |
| C3  | Visualização da foto    | Exibida corretamente (5) | Foto não exibida (6)|


### Tabela de Casos de Teste- AC15
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,3,5  | Foto enviada com sucesso, quantidade de fotos ≥ 1, imagem exibida corretamente | Foto cadastrada com sucesso|
| CT2  | 2,3,5  | Nenhuma foto enviada, quantidade de fotos ≥ 1, imagem exibida corretamente     | Erro no cadastro - Nenhuma foto enviada|
| CT3  | 1,4,5  | Foto enviada com sucesso, quantidade de fotos < 1, imagem exibida corretamente | Erro no cadastro - Quantidade de fotos inválida|
| CT4  | 1,3,6  | Foto enviada com sucesso, quantidade de fotos ≥ 1, imagem não exibida          | Erro na visualização da imagem |


## AC16 - O produto deve ser vinculado automaticamente ao perfil do produtor.

### Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida  | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Usuário autenticado como produtor    | Sim  (1)       | Usuário não autenticado (2) |
| C2  | Produto cadastrado com sucesso       | Sim  (3)       |                             |
| C3  | Produto vinculado automaticamente ao perfil do produtor | Sim  (4)  | Produto não vinculado (5)


### Tabela de Casos de Teste- AC16 
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 4   | Usuário autenticado, produto cadastrado corretamente e vinculado ao perfil| Produto vinculado com sucesso|
| CT2  | 2, 3, 4   | Usuário não autenticado,mas tenta cadastrar e vincular| Erro - Acesso Negado |
| CT3  | 1, 3, 5   | Usuário autenticado, produto cadastrado mas não vinculado ao perfil| Erro - Produto não vinculado|


# Regras de Negócio
## RN14 - Apenas produtores autenticados podem cadastrar produtos.

### Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida  | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Usuário autenticado   | Sim  (1)       | Usuário não autenticado (2) |
| C2  | Perfil de usuário é do tipo "produtor" | Sim  (3)   |  Usuário não é produtor (4) |
| C3  | Produto é cadastrado com sucesso | Sim  (4)  | Produto não cadastrado (5)


### Tabela de Casos de Teste- RN14
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,3,5  | Usuário autenticado, perfil tipo produtor e produto cadastrado com sucesso | Produto cadastrado com sucesso|
| CT2  | 2,3,5  | Usuário não autenticado, perfil tipo produtor e produto cadastrado com sucesso| Acesso Negado - Usuário não autenticado|
| CT3  | 1,4,5  | Usuário autenticado mas o perfil não é do tipo produtor | Erro - Apenas produtores podem cadastrar|
| CT4  | 1,3,6  | Usuário autenticado, perfil tipo produtor mas produto não é cadastrado | Erro no cadastro de produto |

## RN15 - Produtos com campos obrigatórios não preenchidos não podem ser salvos.

### Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida  | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Campo Nome do produto   | Sim  (1)      | Não (2) |
| C2  | Campo Categoria  | Sim  (3)      | Não (4) |
| C3  | Campo preço      | Sim  (5)      | Não (6) |


### Tabela de Casos de Teste- 
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,3,5  | Campos Nome do produto, categoria e preço preenchidos corretamente| Produto cadastrado com sucesso|
| CT2  | 2,3,5  | Campo Nome do produto não foi preenchido corretamente, categoria e preço preenchidos, produto cadastrado| Erro ao cadastrar - Nome do produto é obrigatório |
| CT3  | 1,4,5  | Campo Nome do produto e preço preenchidos corretamente, campo categoria não preenchido | Erro ao cadastrar - Categoria do produto é obrigatório|
| CT4  | 1,3,6  | Campo Nome do produto e categoria preenchidos corretamente, campo preço não preenchido | Erro ao cadastrar - Preço do produto é obrigatório|

## RN16 - Produtos sem estoque (quantidade = 0) ficam ocultos para consumidores.

### Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida  | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Quantidade Estoque > 0    | Sim  (1)       | Não (2) |
| C2  | Produto está ativo        | Sim  (3)       | Não (4) |
| C3  | Produto visível para o consumidor | Sim  (5)  | Não (6)


### Tabela de Casos de Teste- RN16 
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5   | Produto com estoque > 0, ativo e visível| Produto visível para o consumidor|
| CT2  | 2, 3, 5   | Produto com estoque = 0, ativo e visível| Erro - Acesso Negado |
| CT3  | 1, 4, 5   | Produto com estoque > 0, inativo| Produto inativo |
| CT3  | 1, 3, 6   | Produto com estoque > 0, ativo mas não visível| Produto oculto para o consumidor |
