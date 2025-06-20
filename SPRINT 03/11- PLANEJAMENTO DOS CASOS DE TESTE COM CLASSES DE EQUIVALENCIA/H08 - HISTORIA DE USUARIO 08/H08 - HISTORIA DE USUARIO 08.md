# Como consumidor, eu gostaria de poder comprar produtos certificados como orgânicos (conforme legislação brasileira), para garantir uma alimentação saudável e livre de agrotóxicos.  
## AC28- O aplicativo deve ter um selo ou ícone para indicar que o produto é orgânico.    
###  Tabela de Classes de Equivalência

| ID  | Condição de Entrada- AC28                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto possui certificação orgânica        | Sim  (1)          | Não     (2)         |
| C2  | Selo de orgânico está visível no aplicativo | Sim  (3)          | Não     (4)         |
| C3  | Produto pertence à categoria de alimentos   | Sim  (5)         | Não      (6)        |

### Tabela de Casos de Teste- AC28
| Caso | Classes de Equivalência                                   | Entrada                                               | Resultado Esperado |
|------|------------------------------------------------------------|--------------------------------------------------------|--------------------|
| CT1  | 1, 3, 5                                  | Produto com certificação orgânica, selo visível no aplicativo, categoria correta  | Produto Orgânico |
| CT2  | 2, 3, 5                            | Produto sem certificação, selo visível no aplicativo e na categoria correta     |  Produto Não Orgânico   |
| CT3  | 1, 4, 5                              | Produto certificado, selo não visível no aplicativo, categoria correta          |  Produto Não Orgânico |
| CT4  | 1, 3, 6                              | Produto certificado, visível no aplicativo e fora da categoria            |       Produto Não Orgânico |
---
## AC29- O consumidor deve ter a opção de filtrar os produtos por categoria.
###  Tabela de Classes de Equivalência- AC29

| ID  | Condição de Entrada                                 | Classe Válida | Classe Inválida 1 |  Classe Inválida 2 |
|-----|------------------------------------------------------|----------------|------------------|---------------------|
| C1  | Interface apresenta opção de filtro por categoria   | Sim (1)           | Filtro Não disponível na interface  (2)    | produto inesistente (3) |
| C2  | Produto possui uma categoria definida               | Sim (4)         | Categoria indefinida (5) | Categoria errada para o produto (6)   |
| C3  | Filtro aplica corretamente os critérios selecionados | Sim (7)            | Filtro não aplica corretamente os critérios selecionados (8)  |   |

### Tabela de Casos de Teste- AC29 
| Caso | Classes de Equivalência                     | Entrada                                                        | Resultado Esperado |
|------|----------------------------------------------|-----------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7    | Filtro disponível na interface, produto com categoria selecionado e Filtro aplicado corretamente  | Filtro aplicado com sucesso |
| CT2  | 2, 4, 7    | Filtro Não disponível na interface, produto com categoria selecionado e  Filtro aplicado corretamente  | Filtro inexistente |
| CT3  | 3, 4, 7    | produto inesistente, produto com categoria selecionado e  Filtro aplicado corretamente  | Filtro inexistente  |
| CT4  | 1, 5, 7    | Filtro disponível na interface, categoria indefinida e Filtro aplicado corretamente  | Filtro inexistente  |
| CT5  | 1, 6, 7    | Filtro disponível na interface, Categoria errada para o produto e Filtro aplicado corretamente | Filtro inexistente |
| CT6  | 1, 4, 8    | Filtro disponível na interface, produto com categoria selecionado e  Filtro não aplica corretamente os critérios selecionados       | Filtro inexistente  |
---
### Tabela de Classes de Equivalência – AC30

| ID  | Condição de Entrada                                       | Classe Válida           | Classe Inválida 1                            | Classe Inválida 2                           |
|-----|------------------------------------------------------------|--------------------------|-----------------------------------------------|---------------------------------------------|
| C1  | Produto contém campo de descrição do fornecedor           | Sim (1)                  | Campo ausente no cadastro do produto (2)      | Produto sem vínculo com fornecedor (3)      |
| C2  | Descrição do fornecedor está preenchida                   | Sim (4)                  | Campo vazio (5)                                | Preenchimento inconsistente ou inválido (6) |
| C3  | Descrição é exibida corretamente na interface do usuário  | Sim (7)                  | Texto cortado ou ilegível (8)                 | Texto em local errado ou confuso (9)        |

### Tabela de Casos de Teste – AC30

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Produto com campo de descrição preenchido corretamente, texto exibido adequadamente | Descrição do fornecedor exibida com sucesso |
| CT2  | 2, 4, 7                 | Produto sem campo de descrição, mas com valor válido armazenado        | Falha ao exibir descrição                    |
| CT3  | 3, 4, 7                 | Produto sem fornecedor associado, mas descrição presente                | Falha ou inconsistência                      |
| CT4  | 1, 5, 7                 | Produto com campo de descrição vazio, mas configurado para exibição    | Nenhuma informação exibida                  |
| CT5  | 1, 6, 7                 | Campo preenchido com dados incoerentes (ex: "123!!"), exibido normalmente | Exibição incorreta ou conteúdo inválido      |
| CT6  | 1, 4, 8                 | Texto da descrição aparece cortado na interface                         | Falha na exibição                            |
| CT7  | 1, 4, 9                 | Texto aparece fora do local padrão da interface                         | Experiência do usuário prejudicada           |
