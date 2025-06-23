# H17 - Como usuária premium, quero que o sistema sugira automaticamente a lista de compras com base nas receitas salvas para que eu otimize meu tempo e nunca esqueça de um ingrediente
## Critérios de Aceitação

| Código | Descrição |
|------- |---------- |
| AC | O sistema deve gerar automaticamente uma lista de compras com base nas receitas salvas pela usuária. |
| AC | A lista de compras deve incluir todos os ingredientes necessários, considerando a quantidade para cada receita. |
| AC | O sistema deve permitir que a usuária edite a lista de compras antes de finalizar. |
| AC  | A usuária deve receber uma notificação no próprio aplicativo sempre que houver novos ingredientes necessários devido a novas receitas salvas ou modificadas. |
| AC  | A lista de compras deve permitir marcar itens como "comprado". |


## Regra de Negócio 

| Código | Descrição |
|------- |---------- |
| RN | Apenas usuárias com plano premium terão acesso à funcionalidade de lista de compras automática. |
| RN | O sistema deve consolidar ingredientes repetidos de diferentes receitas para evitar duplicidade na lista. |
| RN | Ingredientes com unidade de medida diferente devem ser normalizados (ex: gramas e quilos, ml e litros). |
| RN | As receitas salvas devem estar atualizadas para refletir corretamente os ingredientes na lista de compras. |



### Classes de Equivalência
| Condição de Entrada | Classes Válidas | Classes Inválidas | Classes Inválidas |
|---------------------|-----------------|-------------------|-------------------|
| Tipo de conta da usuária | Usuária premium (1) | Usuária free (2) | Usuária não autenticada (3) |
| Existência de receitas salvas | Receitas salvas pela usuária (4) | Nenhuma receita salva (5) | Receitas deletadas recentemente (6) |
| Consolidação de ingredientes | Ingredientes consolidados corretamente (7) | Ingredientes duplicados na lista (8) | Ingredientes com unidades inconsistentes (9) |
| Opção de edição da lista | Usuária consegue editar/excluir/adicionar itens (10) | Sistema não permite editar (11) | Sistema perde alterações após edição (12) |
| Status de itens comprados | Itens podem ser marcados como adquiridos (13) | Marcação de itens não funciona (14) | Status de compra não é salvo (15) |
###  Casos de Teste

| Caso de Teste | Classes de Equivalência | Entradas | Resultado Esperado |
|---------------|-------------------------|--------- |-------------------|
| Caso 1 | 1, 4, 7, 10, 13 | Usuária premium com receitas salvas gera lista, ingredientes consolidados, edita a lista e marca itens como comprados | Lista gerada e funcionalidades funcionando |
| Caso 2 | 2, 4, 7, 10, 13 | Usuária free tenta acessar a lista de compras automática | Acesso negado |
| Caso 3 | 1, 5, 7, 10, 13 | Usuária premium sem nenhuma receita salva tenta gerar lista | Sistema não gera lista |
| Caso 4 | 1, 4, 8, 10, 13 | Lista gerada com ingredientes duplicados | Sistema deve sinalizar erro ou corrigir automaticamente |
| Caso 5 | 1, 4, 7, 11, 13 | Usuária não consegue editar a lista | Sistema deve permitir edição |
| Caso 6 | 1, 4, 7, 10, 14 | Usuária tenta marcar itens como comprados, mas sistema não permite | Sistema deve permitir a ação |
| Caso 7 | 1, 4, 9, 10, 13 | Ingredientes aparecem com unidades de medida inconsistentes | Sistema deve padronizar as unidades |
| Caso 8 | 3, 4, 7, 10, 13 | Usuária não autenticada tenta acessar a funcionalidade | Sistema deve bloquear o acesso |
| Caso 9 | 1, 6, 7, 10, 13 | Usuária tinha receitas salvas, mas as deletou recentemente, e tenta gerar lista | Sistema não gera a lista |
| Caso 10 | 1, 4, 7, 12, 13 | Usuária edita a lista mas sistema não salva as alterações | Sistema deve garantir persistência das alterações |
