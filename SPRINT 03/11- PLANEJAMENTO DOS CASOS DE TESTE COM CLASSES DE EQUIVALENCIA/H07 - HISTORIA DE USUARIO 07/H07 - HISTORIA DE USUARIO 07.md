# **Como** produtor rural, **quero** receber pedidos diretamente pelo aplicativo, **para que** eu possa organizar a produção e a entrega dos produtos.

# Critérios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC25   | O produtor deve ser notificado ao receber um pedido. |
| AC26   | O pedido deve conter os detalhes do consumidor e dos produtos solicitados. |
| AC27   | O produtor deve poder aceitar ou recusar o pedido. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN23   | Um pedido só é registrado se houver estoque suficiente. |
| RN24   | Após aceito, o estoque dos produtos deve ser automaticamente atualizado. |
| RN25   | Se o pedido for recusado por falta de pagamento, o sistema exibirá  uma mensagem de alerta ao usuário.|
---
# Grupo 1 – Notificação e Dados do Pedido (AC25 | AC26)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas                            | Classes Inválidas                   | Classes Inválidas                  |
|------------------------------------------|--------------------------------------------|------------------------------------|-----------------------------------|
| Notificação de novo pedido para o produtor | Notificação enviada (1)                    | Notificação não enviada (2)        |                                   |
| Dados do pedido (consumidor e produtos)   | Dados completos: consumidor e produtos (3) | Dados do consumidor ausentes (4)  | Dados dos produtos ausentes (5)   |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                              | Resultado Esperado                      |
|---------------|-------------------------|------------------------------------------------------|-----------------------------------------|
| Caso 1        | 1, 3                    | Notificação enviada com dados completos             | OK: Notificação recebida e dados corretos |
| Caso 2        | 2, 3                    | Notificação não enviada, mas dados completos        | Falha: Notificação não recebida        |
| Caso 3        | 1, 4                    | Notificação enviada, mas sem dados do consumidor    | Falha: Dados do consumidor ausentes    |
| Caso 4        | 1, 5                    | Notificação enviada, mas sem dados dos produtos     | Falha: Dados dos produtos ausentes     |

---

# Grupo 2 – Estoque no Momento da Criação do Pedido (RN23)

### Classes de Equivalência

| Condição de Entrada                  | Classes Válidas                      | Classes Inválidas                      | Classes Inválidas                      |
|--------------------------------------|--------------------------------------|----------------------------------------|----------------------------------------|
| Estoque disponível para o pedido     | Quantidade suficiente no estoque (6) | Produto sem estoque (7)               | Quantidade solicitada maior que o estoque (8) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                       | Resultado Esperado                  |
|---------------|-------------------------|----------------------------------------------|-------------------------------------|
| Caso 5        | 1, 3, 7                 | Produto sem estoque                          | Pedido não registrado               |
| Caso 6        | 1, 3, 8                 | Quantidade solicitada maior que o estoque    | Pedido não registrado               |

---

# Grupo 3 – Aceitação ou Recusa do Pedido (AC27)

### Classes de Equivalência

| Condição de Entrada             | Classes Válidas         | Classes Inválidas       |
|---------------------------------|-------------------------|-------------------------|
| Aceitação ou recusa do pedido   | Produtor pode aceitar ou recusar (9) | Interface não permite aceitar nem recusar (10) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                     | Resultado Esperado           |
|---------------|-------------------------|--------------------------------------------|------------------------------|
| Caso 7        | 1, 3, 6, 10              | Interface não apresenta opção de aceitar/recusar | Falha: Interface sem ação  |

---

# Grupo 4 – Atualização de Estoque após Aceitação (RN24)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas                | Classes Inválidas              | Classes Inválidas             |
|------------------------------------------|--------------------------------|--------------------------------|-------------------------------|
| Atualização do estoque após aceitação    | Estoque atualizado corretamente (11) | Estoque não atualizado (12)    | Estoque atualizado incorretamente (13) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                       | Resultado Esperado                     |
|---------------|-------------------------|----------------------------------------------|----------------------------------------|
| Caso 1        | 1, 3, 6, 9, 11           | Pedido aceito, estoque suficiente, estoque atualizado | OK: Pedido aceito e estoque atualizado |
| Caso 8        | 1, 3, 6, 9, 12           | Estoque não atualiza após aceitação          | Falha: Estoque não ajustado            |
| Caso 9        | 1, 3, 6, 9, 13           | Estoque atualizado incorretamente            | Falha: Estoque incorreto               |

---

# Grupo 5 – Alerta por Recusa por Falta de Pagamento (RN25)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas               | Classes Inválidas             | Classes Inválidas               |
|------------------------------------------|-------------------------------|-------------------------------|--------------------------------|
| Recusa por falta de pagamento exibe alerta | Pedido recusado exibe alerta (14) | Pedido recusado sem alerta (15) | Pedido não recusado mesmo sem pagamento (16) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                               | Resultado Esperado                         |
|---------------|-------------------------|-------------------------------------------------------|-------------------------------------------|
| Caso 10       | 1, 3, 6, 9, 11, 15       | Pedido recusado por falta de pagamento, sem alerta   | Falha: Alerta não exibido                |
| Caso 11       | 1, 3, 6, 9, 11, 16       | Pedido não recusado mesmo sem pagamento              | Falha: Pedido não recusado como deveria  |
