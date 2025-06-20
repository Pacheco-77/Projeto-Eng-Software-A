# Como consumidor, eu gostaria de poder comprar produtos certificados como orgânicos (conforme legislação brasileira), para garantir uma alimentação saudável e livre de agrotóxicos.  
## AC28- O aplicativo deve ter um selo ou ícone para indicar que o produto é orgânico.    
###  Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto possui certificação orgânica        | Sim  (1)          | Não     (2)         |
| C2  | Selo de orgânico está visível no aplicativo | Sim  (3)          | Não     (4)         |
| C3  | Produto pertence à categoria de alimentos   | Sim  (5)         | Não      (6)        |

---

### Tabela de Casos de Teste

| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5                                  | Produto com certificação orgânica, selo visível no aplicativo, categoria correta  | Produto Orgânico |
| CT2  | 2, 3, 5                            | Produto sem certificação, selo visível no aplicativo e na categoria correta     |  Produto Não Orgânico   |
| CT3  | 1, 4, 5                              | Produto certificado, selo não visível no aplicativo, categoria correta          |  Produto Não Orgânico |
| CT4  | 1, 3, 6                              | Produto certificado, visível no aplicativo e fora da categoria            |       Produto Não Orgânico |

## AC29- O consumidor deve ter a opção de filtrar os produtos por categoria.
###  Tabela de Classes de Equivalência

| ID  | Condição de Entrada                                 | Classe Válida | Classe Inválida 1 |  Classe Inválida 2 |
|-----|------------------------------------------------------|----------------|------------------|---------------------|
| C1  | Interface apresenta opção de filtro por categoria   | Sim (1)           | Filtro em Branco  (2)    | produto inesistente (3) |
| C2  | Produto possui uma categoria definida               | Sim (4)         | Categoria indefinida (5) | Categoria errada para o produto (6)   |
| C3  | Filtro aplica corretamente os critérios selecionados | Sim (7)            | Filtro não aplica corretamente os critérios selecionados (8)  |   |
