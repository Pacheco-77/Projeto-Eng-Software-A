# Como consumidor, eu gostaria de poder comprar produtos certificados como orgânicos (conforme legislação brasileira), para garantir uma alimentação saudável e livre de agrotóxicos.  
# Critérios de Aceitação
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
## AC30-	Os produtos devem ter a descrição do fornecedor.
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
---  
## AC31- O consumidor deve poder adicionar itens ao carrinho de compras.
### Tabela de Classes de Equivalência – AC31

| ID  | Condição de Entrada                                 | Classe Válida                         | Classe Inválida 1                               | Classe Inválida 2                          |
|-----|------------------------------------------------------|----------------------------------------|--------------------------------------------------|--------------------------------------------|
| C1  | Produto disponível para compra                      | Sim (1)                                | Produto indisponível (2)                         | Produto com estoque zerado (3)             |
| C2  | Função “Adicionar ao carrinho” visível e funcional  | Sim (4)                                | Botão não exibido (5)                            | Função inoperante (6)                      |
| C3  | Item é corretamente adicionado ao carrinho          | Sim (7)                                | Item não é adicionado (8)                        | Item duplicado ou com erro de quantidade (9) |

### Tabela de Casos de Teste – AC31

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|--------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Produto disponível, botão “Adicionar ao carrinho” visível e funcional, item adicionado com sucesso | Item presente no carrinho |
| CT2  | 2, 4, 7                 | Produto indisponível, botão visível e funcional                         | Item não adicionado |
| CT3  | 3, 4, 7                 | Produto com estoque zerado, botão visível e funcional                   | Item não adicionado |
| CT4  | 1, 5, 7                 | Produto disponível, botão não exibido                                   | Usuário não consegue adicionar item |
| CT5  | 1, 6, 7                 | Produto disponível, botão exibido, mas função inoperante                | Ação falha ao tentar adicionar item |
| CT6  | 1, 4, 8                 | Produto disponível, botão funcional, mas falha ao adicionar             | Carrinho não atualiza |
| CT7  | 1, 4, 9                 | Produto disponível, botão funcional, mas item aparece duplicado         | Erro de quantidade no carrinho |
--- 
## AC32-	O aplicativo deve permitir o consumidor visualizar o valor total da compra antes de finalizá-la.
### Tabela de Classes de Equivalência – AC32

| ID  | Condição de Entrada                                        | Classe Válida                     | Classe Inválida 1                                   | Classe Inválida 2                             |
|-----|-------------------------------------------------------------|------------------------------------|------------------------------------------------------|------------------------------------------------|
| C1  | Aplicativo calcula o valor total da compra automaticamente | Sim (1)                            | Cálculo não é acionado automaticamente (2)           | Valor calculado incorretamente (3)            |
| C2  | Valor total exibido na interface antes de finalizar compra | Sim (4)                            | Valor total não exibido (5)                          | Valor exibido apenas após finalização (6)     |
| C3  | Valor total corresponde à soma dos itens no carrinho       | Sim (7)                            | Total não condiz com os itens adicionados (8)        | Soma desconsidera descontos ou frete (9)      |

### Tabela de Casos de Teste – AC32

| Caso | Classes de Equivalência | Entrada                                                                                   | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Cálculo automático do total, valor exibido corretamente, soma confere com os itens        | Valor total exibido corretamente |
| CT2  | 2, 4, 7                 | Total precisa de ação manual, valor exibido corretamente, soma confere                    | Funcionalidade falha parcialmente |
| CT3  | 3, 4, 7                 | Valor calculado incorretamente, mas exibido antes da finalização                          | Valor incorreto exibido |
| CT4  | 1, 5, 7                 | Cálculo automático, mas total não é exibido ao consumidor antes da finalização            | Falta de transparência no processo |
| CT5  | 1, 6, 7                 | Valor só aparece após finalização da compra                                               | Experiência do usuário prejudicada |
| CT6  | 1, 4, 8                 | Valor exibido, mas diferente da soma de itens no carrinho                                 | Inconsistência de valores |
| CT7  | 1, 4, 9                 | Soma correta dos itens, mas descontos e frete não considerados no total                   | Total exibido com erro de cálculo |
---
## AC33-	O consumidor deve poder concluir a compra dentro do aplicativo sempre que possível. Quando o uso de plataformas externas for necessário (ex: autenticação bancária), o redirecionamento será feito de forma segura e transparente, com retorno automático ao app após o pagamento.
### Tabela de Classes de Equivalência – AC33

| ID  | Condição de Entrada                                                                | Classe Válida                       | Classe Inválida 1                                      | Classe Inválida 2                                    |
|-----|-------------------------------------------------------------------------------------|--------------------------------------|---------------------------------------------------------|-------------------------------------------------------|
| C1  | Processo de compra pode ser concluído dentro do app                                | Sim (1)                              | Processo exige saída do app sem retorno (2)             | App trava ou reinicia durante o processo (3)          |
| C2  | Redirecionamento externo ocorre de forma segura e transparente (quando necessário) | Sim (4)                              | Redirecionamento não seguro ou confuso (5)              | Interface do redirecionamento apresenta falhas (6)    |
| C3  | App retorna automaticamente após processo externo                                   | Sim (7)                              | Retorno ao app falha ou precisa de ação manual (8)      | Retorno leva o usuário a uma tela incorreta (9)       |

### Tabela de Casos de Teste – AC33

| Caso | Classes de Equivalência | Entrada                                                                                                    | Resultado Esperado |
|------|--------------------------|------------------------------------------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Compra é concluída no app, ou redirecionamento ocorre com segurança e retorno automático ao app            | Compra concluída com sucesso |
| CT2  | 2, 4, 7                 | Compra exige saída não prevista do app, redirecionamento é seguro, retorno automático                     | Experiência parcial, app não oferece compra direta |
| CT3  | 3, 4, 7                 | App apresenta falha e reinicia ao tentar processar compra                                                  | Processo de compra interrompido |
| CT4  | 1, 5, 7                 | Processo no app é normal, mas redirecionamento confuso e inseguro                                          | Usuário desconfia da segurança do pagamento |
| CT5  | 1, 6, 7                 | Interface externa com falhas durante redirecionamento                                                      | Interrupção ou abandono da compra |
| CT6  | 1, 4, 8                 | Compra com redirecionamento seguro, mas app não retorna automaticamente                                   | Usuário precisa reiniciar o app |
| CT7  | 1, 4, 9                 | Compra com redirecionamento correto, mas retorno leva a tela de início ao invés de resumo de pedido       | Continuidade de navegação comprometida |
---  

# Regras de Negócio
## RN26-	Um agrônomo deve aprovar o selo de orgânico.
### Tabela de Classes de Equivalência – RN26

| ID  | Condição de Entrada                                    | Classe Válida               | Classe Inválida 1                                 | Classe Inválida 2                             |
|-----|---------------------------------------------------------|------------------------------|----------------------------------------------------|------------------------------------------------|
| C1  | Produto com solicitação de selo orgânico               | Sim (1)                      | Produto sem solicitação de selo (2)                | Produto já possui selo aprovado anteriormente (3) |
| C2  | Agrônomo disponível para análise e decisão             | Sim (4)                      | Agrônomo ausente ou não designado (5)              | Agrônomo não possui permissão para aprovar (6) |
| C3  | Aprovação do selo registrada de forma oficial          | Sim (7)                      | Aprovação feita fora do sistema (8)                | Aprovação não registrada corretamente (9)       |

### Tabela de Casos de Teste – RN26

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Produto solicita selo, agrônomo disponível e registro feito corretamente | Selo aprovado e registrado com sucesso |
| CT2  | 2, 4, 7                 | Produto sem solicitação, mesmo com agrônomo disponível                   | Processo de aprovação não iniciado |
| CT3  | 3, 4, 7                 | Produto já aprovado previamente, nova tentativa de solicitação          | Solicitação rejeitada ou ignorada |
| CT4  | 1, 5, 7                 | Produto solicita selo, mas não há agrônomo designado                     | Aprovação não realizada |
| CT5  | 1, 6, 7                 | Produto solicita selo, agrônomo atribuído sem permissão adequada        | Aprovação inválida ou bloqueada pelo sistema |
| CT6  | 1, 4, 8                 | Produto e agrônomo corretos, mas aprovação feita fora do sistema        | Registro ausente, processo inválido |
| CT7  | 1, 4, 9                 | Produto e agrônomo corretos, mas falha na gravação da aprovação         | Inconsistência no status do selo |
---
## RN27-	Todos produtos orgânicos devem ter a descrição detalhada de sua procedência (fornecedor, local de cultivo, data da colheita…).
### Tabela de Classes de Equivalência – RN27

| ID  | Condição de Entrada                                      | Classe Válida               | Classe Inválida 1                                      | Classe Inválida 2                                |
|-----|-----------------------------------------------------------|------------------------------|---------------------------------------------------------|---------------------------------------------------|
| C1  | Produto é classificado como orgânico                     | Sim (1)                      | Produto não orgânico (2)                               | Produto sem classificação definida (3)           |
| C2  | Campos de procedência estão preenchidos                  | Sim (4)                      | Campos ausentes (5)                                     | Campos preenchidos de forma incompleta (6)       |
| C3  | Procedência exibida de forma legível na interface        | Sim (7)                      | Texto truncado ou ilegível (8)                          | Dados em local inadequado da interface (9)       |

### Tabela de Casos de Teste – RN27

| Caso | Classes de Equivalência | Entrada                                                                                 | Resultado Esperado |
|------|--------------------------|-----------------------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Produto orgânico com todos os dados de procedência preenchidos e exibidos corretamente | Procedência exibida com sucesso |
| CT2  | 2, 4, 7                 | Produto não orgânico com dados preenchidos                                              | Procedência não obrigatória |
| CT3  | 3, 4, 7                 | Produto sem classificação definida, campos preenchidos corretamente                    | Exibição depende da regra de negócio aplicada |
| CT4  | 1, 5, 7                 | Produto orgânico com campos de procedência ausentes                                     | Exibição incompleta, violação do requisito |
| CT5  | 1, 6, 7                 | Produto orgânico com procedência incompleta (ex: sem data de colheita)                 | Exibição parcial, falta de informação obrigatória |
| CT6  | 1, 4, 8                 | Produto orgânico com procedência preenchida, mas texto cortado                         | Experiência prejudicada, precisa correção |
| CT7  | 1, 4, 9                 | Produto orgânico com dados corretos, mas exibidos fora do local esperado               | Navegação confusa ou improdutiva |
---

## RN28-	As categorias de produtos devem estar sempre atualizadas.
### Tabela de Classes de Equivalência – RN28

| ID  | Condição de Entrada                                  | Classe Válida                  | Classe Inválida 1                                       | Classe Inválida 2                                |
|-----|-------------------------------------------------------|---------------------------------|----------------------------------------------------------|---------------------------------------------------|
| C1  | Sistema permite manutenção das categorias             | Sim (1)                         | Interface de gerenciamento de categorias inexistente (2) | Acesso restrito ou com falhas (3)                |
| C2  | Atualizações de categoria são refletidas no app      | Sim (4)                         | Atualizações não propagam corretamente (5)               | Demora excessiva na atualização (6)              |
| C3  | Categorias estão alinhadas com os produtos ativos    | Sim (7)                         | Categorias obsoletas ou não utilizadas (8)               | Categorias duplicadas ou ambíguas (9)            |

### Tabela de Casos de Teste – RN28

| Caso | Classes de Equivalência | Entrada                                                                               | Resultado Esperado |
|------|--------------------------|---------------------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Sistema com interface de gerenciamento funcional, categorias atualizadas e em uso    | Categorias refletidas corretamente no app |
| CT2  | 2, 4, 7                 | Interface de gerenciamento indisponível, mas dados antigos ainda são exibidos        | Categorias desatualizadas permanecem visíveis |
| CT3  | 3, 4, 7                 | Acesso ao painel com erros, atualizações realizadas não são salvas corretamente       | Falha na manutenção de categorias |
| CT4  | 1, 5, 7                 | Atualização feita, mas app não exibe as mudanças                                     | Inconsistência entre sistema e interface |
| CT5  | 1, 6, 7                 | Atualização de categoria demora mais de 1 hora para refletir                         | Experiência do usuário comprometida |
| CT6  | 1, 4, 8                 | Categoria antiga permanece visível mesmo sem produtos associados                     | Requisito de atualização não cumprido |
| CT7  | 1, 4, 9                 | Categorias repetidas (ex: “Verduras” e “Hortaliças”) confundem o consumidor          | Organização inadequada no app |
---

## RN29-	Apenas produtores cadastrados e verificados devem poder vender produtos como orgânicos.
### Tabela de Classes de Equivalência – RN29

| ID  | Condição de Entrada                                      | Classe Válida                  | Classe Inválida 1                                        | Classe Inválida 2                                |
|-----|-----------------------------------------------------------|---------------------------------|-----------------------------------------------------------|---------------------------------------------------|
| C1  | Produtor está cadastrado na plataforma                   | Sim (1)                         | Produtor não cadastrado (2)                              | Cadastro com dados incompletos (3)               |
| C2  | Produtor passou por processo de verificação              | Sim (4)                         | Verificação pendente (5)                                 | Verificação reprovada ou inválida (6)            |
| C3  | Sistema restringe a venda de produtos orgânicos          | Sim (7)                         | Sistema permite cadastro de produtos orgânicos por qualquer produtor (8) | Restrição falha em alguns casos (9) |

### Tabela de Casos de Teste – RN29

| Caso | Classes de Equivalência | Entrada                                                                            | Resultado Esperado |
|------|--------------------------|------------------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Produtor cadastrado e verificado, sistema aplica corretamente a restrição         | Produto orgânico disponível para venda |
| CT2  | 2, 4, 7                 | Produtor não cadastrado, mesmo com verificação válida                             | Venda não permitida |
| CT3  | 3, 4, 7                 | Cadastro incompleto, verificação válida                                            | Venda negada até regularização do cadastro |
| CT4  | 1, 5, 7                 | Cadastro feito, mas verificação pendente                                           | Venda de produto orgânico bloqueada |
| CT5  | 1, 6, 7                 | Cadastro feito, verificação inválida                                               | Venda não permitida |
| CT6  | 1, 4, 8                 | Sistema ignora restrição de verificação                                            | Risco de venda indevida de produto orgânico |
| CT7  | 1, 4, 9                 | Sistema falha ao aplicar restrição para determinado produtor                      | Produto orgânico liberado indevidamente |
---
