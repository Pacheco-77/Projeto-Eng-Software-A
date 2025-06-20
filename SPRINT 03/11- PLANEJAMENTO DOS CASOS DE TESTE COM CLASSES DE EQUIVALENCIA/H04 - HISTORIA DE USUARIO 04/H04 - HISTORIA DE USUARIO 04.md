# H4 - Como produtor rural, quero cadastrar meus produtos com fotos e descrições simples, para que os consumidores saibam o que estou vendendo e de onde vem.

## História de Usuário

| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto com foto | Sim  (1)          | Produto sem foto cadastrada    (2)         |
| C2  | Produto com pequena descrição  | Sim  (3)          | Descrição longa  (4)    |
| C3  | Interfacie exibe a foto e descrição dos produtos de forma organizada   | Sim  (5)         | Não      (6)        |

### Tabela de Casos de Teste- AC28
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5   | Produto com foto, descrição e interfacie organizada | Produto cadastrado com sucesso|
| CT2  | 2, 3, 5   | Produto sem foto, com pequena descrição e interfacie organizada | Erro no Cadastro - Produto sem foto cadastrada |
| CT3  | 1, 4, 5   | Produto com foto, descrição longa e interfacie organizada       | Erro no Cadastro - Descrição longa|
| CT4  | 1, 3, 6   | Produto com foto, pequena descrição e interfacie desorganizada  | Erro no cadastro - Interfacie mal formatada |

## História de Usuário

| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  |         | Sim  (1)          | Não     (2)         |
| C2  |  | Sim  (3)          | Não     (4)         |
| C3  |    | Sim  (5)         | Não      (6)        |

### Tabela de Casos de Teste- AC28
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  |k                              | k | k|
| CT2  | k                          | k    | k  |
| CT3  | k                          |k        |  k |
| CT4  | k                           | k          |       k |


## Critérios de Aceitação
### AC14 - O formulário deve permitir incluir nome, descrição, quantidade disponível e preço.

| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  |         | Sim  (1)          | Não     (2)         |
| C2  |  | Sim  (3)          | Não     (4)         |
| C3  |    | Sim  (5)         | Não      (6)        |

### Tabela de Casos de Teste- AC28
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  |k                              | k | k|
| CT2  | k                          | k    | k  |
| CT3  | k                          |k        |  k |
| CT4  | k                           | k          |       k |
