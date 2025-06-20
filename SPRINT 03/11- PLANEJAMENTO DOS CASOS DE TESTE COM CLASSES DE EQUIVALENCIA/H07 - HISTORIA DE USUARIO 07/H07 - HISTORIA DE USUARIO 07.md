# **Como** produtor rural, **quero** receber pedidos diretamente pelo aplicativo, **para que** eu possa organizar a produção e a entrega dos produtos.

# Critérios de Aceitação

* O produtor deve ser notificado ao receber um pedido.
* O pedido deve conter os detalhes do consumidor e dos produtos solicitados.
*	O produtor deve poder aceitar ou recusar o pedido.

# Regras de Negócio

* 	Um pedido só é registrado se houver estoque suficiente.
*	 Após a aceitação do pedido, o estoque dos produtos selecionados será automaticamente atualizado no cadastro do produtor
* 	Se o pedido for recusado por falta de pagamento, o sistema exibirá  uma mensagem de alerta ao usuário.

---
### Tabela de Classes de Equivalência

| Condição de Entrada                                                    | Classes Válidas                                 | Classes Inválidas                            | Classes Inválidas                           |
|-------------------------------------------------------------------------|-------------------------------------------------|------------------------------------------------|----------------------------------------------|
| Notificação de novo pedido para o produtor                             | Notificação enviada                             | Notificação não enviada                       | -                                            |
| Pedido contém os dados do consumidor e dos produtos                    | Dados completos no pedido                       | Dados do consumidor ausentes                  | Dados dos produtos ausentes                  |
| Estoque disponível para o pedido (Regra de Negócio)                    | Quantidade em estoque suficiente                | Produto sem estoque                           | Quantidade menor que a solicitada            |
| Aceitação ou recusa do pedido                                           | Produtor aceita ou recusa                       | Sem opção de aceitar ou recusar               | -                                            |
| Atualização de estoque após aceitação (Regra de Negócio)               | Estoque atualizado corretamente                 | Estoque não atualizado                        | Estoque atualizado incorretamente            |
| Recusa por falta de pagamento (Regra de Negócio)                       | Pedido recusado exibe alerta ao consumidor      | Pedido recusado sem exibir alerta             | Pedido não recusado, mesmo sem pagamento     |

---

### Tabela de Casos de Teste

| Casos de Teste | Classes de Equivalência                                        | Entrada                                                                              | Resultado Esperado                                        |
|----------------|-----------------------------------------------------------------|--------------------------------------------------------------------------------------|-----------------------------------------------------------|
| Caso 1           | Notificação enviada                                             | Novo pedido realizado                                                                | Produtor recebe notificação                               |
| Caso 2           | Notificação não enviada                                        | Novo pedido realizado                                                                | Erro: notificação não recebida                            |
| Caso 3           | Pedido com dados completos                                      | Pedido com nome do consumidor, endereço e lista de produtos                          | Pedido criado com sucesso                                 |
| Caso 4           | Dados do consumidor ausentes                                    | Pedido sem nome do consumidor                                                         | Erro: não é possível criar o pedido                       |
| Caso 5           | Dados dos produtos ausentes                                     | Pedido sem produtos listados                                                          | Erro: não é possível criar o pedido                       |
| Caso 6           | Estoque suficiente (RN)                                         | Produto solicitado com estoque disponível                                             | Pedido registrado                                         |
| Caso 7           | Produto sem estoque (RN)                                        | Produto solicitado não tem estoque                                                    | Pedido não registrado, mensagem de erro                   |
| Caso 8           | Quantidade menor que solicitada (RN)                            | Estoque de 2 unidades e pedido de 5                                                   | Pedido não registrado, mensagem de erro                   |
| Caso 9           | Aceitar pedido                                                   | Produtor clica em "Aceitar pedido"                                                    | Pedido aceito, estoque atualizado                         |
| Caso 10           | Recusar pedido                                                   | Produtor clica em "Recusar pedido"                                                    | Pedido recusado                                           |
| Caso 11           | Sem opção de aceitar/recusar                                    | Interface não apresenta botões de ação                                                | Erro de funcionalidade                                    |
| Caso 12           | Atualizar estoque corretamente após aceitação (RN)              | Produto tinha 10, vendeu 3                                                           | Estoque atualizado para 7                                  |
| Caso 13           | Estoque não atualizado após aceitação (RN)                      | Aceitar pedido, mas estoque permanece o mesmo                                        | Erro: estoque não foi atualizado                          |
| Caso 14           | Recusar por falta de pagamento exibe alerta (RN)                | Consumidor não paga, produtor recusa                                                 | Alerta exibido ao consumidor sobre recusa por falta de pagamento |
| Caso 15           | Recusa sem alerta exibido (RN)                                  | Pedido recusado por falta de pagamento, sem exibir alerta                            | Erro: alerta não exibido                                  |
| Caso 16           | Pedido não recusado mesmo sem pagamento (RN)
