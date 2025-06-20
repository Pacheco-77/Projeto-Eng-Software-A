# H4 - Como produtor rural, quero cadastrar meus produtos com fotos e descrições simples, para que os consumidores saibam o que estou vendendo e de onde vem.

## História do Usuário

### Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto com foto | Sim  (1)          | Produto sem foto cadastrada    (2)         |
| C2  | Produto com pequena descrição  | Sim  (3)          | Descrição longa  (4)    |
| C3  | Interface exibe a foto e descrição dos produtos de forma organizada   | Sim  (5)         | Não      (6)        |

### Tabela de Casos de Teste- História do Usuário 
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5   | Produto com foto, descrição e interface organizada | Produto cadastrado com sucesso|
| CT2  | 2, 3, 5   | Produto sem foto, com pequena descrição e interface organizada | Erro no Cadastro - Produto sem foto cadastrada |
| CT3  | 1, 4, 5   | Produto com foto, descrição longa e interface organizada       | Erro no Cadastro - Descrição longa|
| CT4  | 1, 3, 6   | Produto com foto, pequena descrição e interface desorganizada  | Erro no cadastro - Interface mal formatada |

## Critérios de Aceitação
### AC14 - O formulário deve permitir incluir nome, descrição, quantidade disponível e preço.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida | Classe Inválida    |
|-----|---------------------------------------------|----------------|------------------|------------------|
| C1  | Campo nome e descrição        | Campos preenchidos corretamente (1)  | Nome ausente(2) | Descrição ausente (3)   |
| C2  | Campo quantidade disponível e preço | Campos preenchidos corretamente (4) | Quant. disponível ausente (5) |  Preço ausente (6)|
| C3  | Todos os campos preenchidos e visíveis na interface  | Sim  (7)  | Um campo não exibido na interface (8)| Layout desorganizado (9)|

### Tabela de Casos de Teste- AC14
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1,4,7 | Todos os campos preenchidos corretamente e visíveis na interface | Produto cadastrado e exibido com sucesso|
| CT2  | 2,4,7 | Nome ausente, demais campos preenchidos corretamente e visíveis na interface| Erro no Cadastro - Campo nome ausente |
| CT3  | 3,4,7 | Descrição ausente, demais campos preenchidos corretamente e visíveis na interface|  Erro no Cadastro - Descrição ausente |
| CT4  | 1,5,7 | Quantidade disponível ausente, demais campos preenchidos corretamente e visíveis na interface|  Erro no Cadastro - Quantidade disponível ausente |
| CT5  | 1,6,7 | Preço ausente, demais campos preenchidos corretamente e visíveis na interface|  Erro no Cadastro - Preço ausente|
| CT6  | 1,4,8 | Campos preenchidos corretamente, mas erro na exibição de um campo |  Erro de usabilidade - Falha na exibição de dados |
| CT7  | 1,4,9 | Campos preenchidos corretamente, mas layout desalinhado| Erro de usabilidade – layout comprometido|

## Critérios de Aceitação
### AC15 - Deve ser possível adicionar ao menos uma foto por produto.

### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  |         | Sim  (1)          | Não     (2)         |
| C2  |  | Sim  (3)          | Não     (4)         |
| C3  |    | Sim  (5)         | Não      (6)        |

### Tabela de Casos de Teste- AC15
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  |k                              | k | k|
| CT2  | k                          | k    | k  |
| CT3  | k                          |k        |  k |
| CT4  | k                           | k          |       k |
