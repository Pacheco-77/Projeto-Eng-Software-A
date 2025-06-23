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

# ✅ Grupo 1 – Notificação e Detalhamento do Pedido (AC25 | AC26)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas               | Classes Inválidas                   |
|------------------------------------------|-------------------------------|------------------------------------|
| Notificação enviada ao produtor          | Notificação recebida (1)       | Notificação não recebida (2)       |
| Conteúdo do pedido                       | Detalhes completos: consumidor e produtos (3) | Detalhes incompletos (4) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                         | Resultado Esperado              |
|---------------|-------------------------|------------------------------------------------|--------------------------------|
| Caso 1        | 1, 3                    | Pedido enviado, produtor notificado com detalhes completos | Notificação recebida com sucesso |
| Caso 2        | 2, 3                    | Pedido enviado, mas produtor não recebe notificação | Falha: Notificação ausente      |
| Caso 3        | 1, 4                    | Pedido enviado, notificação recebida, mas sem detalhes completos | Falha: Dados incompletos        |

---

# ✅ Grupo 2 – Aceitar ou Recusar Pedido (AC27)

### Classes de Equivalência

| Condição de Entrada             | Classes Válidas         | Classes Inválidas       |
|---------------------------------|-------------------------|-------------------------|
| Ação do produtor                | Pedido aceito (5)       | Pedido recusado (6)     |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada               | Resultado Esperado           |
|---------------|-------------------------|-----------------------|------------------------------|
| Caso 1        | 5                      | Produtor aceita o pedido | Pedido confirmado          |
| Caso 2        | 6                      | Produtor recusa o pedido | Pedido cancelado           |

---

# ✅ Grupo 3 – Estoque e Registro de Pedido (RN23 | RN24)

### Classes de Equivalência

| Condição de Entrada                  | Classes Válidas                      | Classes Inválidas                      |
|--------------------------------------|--------------------------------------|---------------------------------------|
| Estoque disponível no momento do pedido | Estoque suficiente (7)              | Estoque insuficiente (8)              |
| Atualização automática de estoque após aceitação | Estoque atualizado (9)         | Estoque não atualizado (10)           |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                  | Resultado Esperado                  |
|---------------|-------------------------|-----------------------------------------|-------------------------------------|
| Caso 1        | 7, 9                    | Pedido com estoque suficiente, aceito   | Pedido registrado, estoque reduzido |
| Caso 2        | 8                      | Pedido feito sem estoque suficiente     | Falha: Pedido não registrado        |
| Caso 3        | 7, 10                   | Pedido aceito, mas estoque não atualizou | Falha: Estoque não ajustado         |

---

# ✅ Grupo 4 – Recusa por Falta de Pagamento (RN25)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas               | Classes Inválidas             |
|------------------------------------------|-------------------------------|-------------------------------|
| Motivo da recusa                         | Falta de pagamento (11)       | Outro motivo (12)             |
| Exibição de mensagem de alerta           | Mensagem exibida (13)         | Mensagem não exibida (14)     |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                    | Resultado Esperado          |
|---------------|-------------------------|-------------------------------------------|-----------------------------|
| Caso 1        | 11, 13                 | Pedido recusado por falta de pagamento    | Mensagem de alerta exibida  |
| Caso 2        | 12, 14                 | Pedido recusado por outro motivo          | Nenhuma mensagem de alerta específica |

aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa




# ✅ Grupo 1 – Notificação e Dados do Pedido (AC25 | AC26)

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

# ✅ Grupo 2 – Estoque no Momento da Criação do Pedido (RN23)

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

# ✅ Grupo 3 – Aceitação ou Recusa do Pedido (AC27)

### Classes de Equivalência

| Condição de Entrada             | Classes Válidas         | Classes Inválidas       |
|---------------------------------|-------------------------|-------------------------|
| Aceitação ou recusa do pedido   | Produtor pode aceitar ou recusar (9) | Interface não permite aceitar nem recusar (10) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                     | Resultado Esperado           |
|---------------|-------------------------|--------------------------------------------|------------------------------|
| Caso 7        | 1, 3, 6, 10              | Interface não apresenta opção de aceitar/recusar | Falha: Interface sem ação  |

---

# ✅ Grupo 4 – Atualização de Estoque após Aceitação (RN24)

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

# ✅ Grupo 5 – Alerta por Recusa por Falta de Pagamento (RN25)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas               | Classes Inválidas             | Classes Inválidas               |
|------------------------------------------|-------------------------------|-------------------------------|--------------------------------|
| Recusa por falta de pagamento exibe alerta | Pedido recusado exibe alerta (14) | Pedido recusado sem alerta (15) | Pedido não recusado mesmo sem pagamento (16) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                               | Resultado Esperado                         |
|---------------|-------------------------|-------------------------------------------------------|-------------------------------------------|
| Caso 10       | 1, 3, 6, 9, 11, 15       | Pedido recusado por falta de pagamento, sem alerta   | Falha: Alerta não exibido                |
| Caso 11       | 1, 3, 6, 9, 11, 16       | Pedido não recusado mesmo sem pagamento              | Falha: Pedido não recusado como deveria  |
























kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk


### Tabela de Classes de Equivalência

| Condição de Entrada                                          | Classes Válidas                                        | Classes Inválidas                                          | Classes Inválidas                                         |
|--------------------------------------------------------------|--------------------------------------------------------|------------------------------------------------------------|-----------------------------------------------------------|
| Notificação de novo pedido para o produtor                   | Notificação enviada (1)                                | Notificação não enviada (2)                                |                                                           |
| Dados do pedido (dados do consumidor e dos produtos)         | Dados completos: consumidor e produtos (3)             | Dados do consumidor ausentes (4)                           | Dados dos produtos ausentes (5)                           |
| Estoque disponível para o pedido                             | Quantidade suficiente no estoque (6)                   | Produto sem estoque (7)                                     | Quantidade solicitada maior que o estoque (8)             |
| Aceitação ou recusa do pedido                                | Produtor pode aceitar ou recusar (9)                   | Interface não permite aceitar nem recusar (10)              |                                                           |
| Atualização do estoque após aceitação do pedido              | Estoque atualizado corretamente (11)                   | Estoque não atualizado (12)                                 | Estoque atualizado incorretamente (13)                    |
| Recusa por falta de pagamento exibe alerta ao consumidor     | Pedido recusado exibe alerta (14)                      | Pedido recusado sem exibir alerta (15)                      | Pedido não recusado mesmo sem pagamento (16)              |

---

### Tabela de Casos de Teste

| Casos de Teste | Classes de Equivalência         | Entradas                                                                                     | Resultado Esperado                                                                                     |
|----------------|----------------------------------|----------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| Caso 1         | 1, 3, 6, 9, 11, 14               | Pedido com dados completos, estoque suficiente, produtor aceita, alerta funcionando         | Pedido aceito, estoque atualizado corretamente, alerta funciona se necessário                         |
| Caso 2         | 2, 3, 6, 9, 11, 14               | Notificação não enviada, dados corretos, estoque suficiente                                  | Pedido criado, mas produtor não recebe notificação                                                     |
| Caso 3         | 1, 4, 6, 9, 11, 14               | Dados do consumidor ausentes                                                                 | Pedido não criado, mensagem de erro: "Dados do consumidor obrigatórios"                              |
| Caso 4         | 1, 5, 6, 9, 11, 14               | Dados dos produtos ausentes                                                                  | Pedido não criado, mensagem de erro: "Pedido sem produtos"                                            |
| Caso 5         | 1, 3, 7, 9, 11, 14               | Produto sem estoque                                                                          | Pedido não registrado, mensagem: "Produto sem estoque"                                                |
| Caso 6         | 1, 3, 8, 9, 11, 14               | Pedido de quantidade maior que o estoque disponível                                          | Pedido não registrado, mensagem: "Quantidade solicitada excede o estoque disponível"                 |
| Caso 7         | 1, 3, 6, 10, 11, 14              | Interface não apresenta opção de aceitar ou recusar                                          | Erro funcional: produtor não consegue aceitar nem recusar o pedido                                    |
| Caso 8         | 1, 3, 6, 9, 12, 14               | Estoque não atualiza após aceitação do pedido                                                | Pedido aceito, mas estoque permanece igual, gerando erro                                              |
| Caso 9         | 1, 3, 6, 9, 13, 14               | Estoque atualizado incorretamente após aceitar o pedido                                     | Pedido aceito, porém o estoque mostra valor errado                                                    |
| Caso 10        | 1, 3, 6, 9, 11, 15               | Pedido recusado por falta de pagamento, sem exibir alerta                                   | Pedido recusado, porém o consumidor não é informado da recusa por falta de pagamento                 |
| Caso 11        | 1, 3, 6, 9, 11, 16               | Pedido não recusado mesmo sem pagamento                                                      | Pedido permanece ativo mesmo sem pagamento, gerando erro no fluxo                                     |
