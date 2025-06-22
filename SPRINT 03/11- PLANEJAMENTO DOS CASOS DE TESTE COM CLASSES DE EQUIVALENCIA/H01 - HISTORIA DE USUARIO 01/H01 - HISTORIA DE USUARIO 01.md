### H1 - **Como Agrônoma**, **quero** dar dicas para os produtores, **para que** eu possa contribuir com práticas agrícolas melhores.

# Critérios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC01   | Campo de Envio de Dicas no Perfil do Agrônomo: A agrônoma poderá acessar o perfil de um produtor e enviar uma dica utilizando um formulário com até 4 campos: título (opcional - máximo 100 caracteres), conteúdo da dica (obrigatório), caixa de seleção (checkbox) com o texto “Enviar dica anonimamente”, categoria da dica (opcional), e botão de envio. O conteúdo deve ter no máximo 500 caracteres. |
| AC02   | Confirmação de Envio: Após o envio da dica, o sistema deve exibir uma mensagem do tipo modal com o texto “Sua dica foi enviada com sucesso!”, que permaneça visível por 3 segundos ou até que o usuário interaja com a tela. |
| AC03   | Visualização das Dicas pelo Produtor: O produtor deve conseguir ver as dicas recebidas em seu painel, com separação entre lidas e não lidas. As dicas devem ser listadas em ordem cronológica e exibidas com indicadores visuais (ex: selo "Nova") para as não lidas. O produtor poderá marcar dicas como lidas manualmente. |
| AC04   | Limite de Envio de Dicas por Dia: A agrônoma poderá enviar até 3 dicas por dia para o mesmo produtor. Ao atingir o limite, o sistema deve desabilitar o botão de envio e exibir uma mensagem como: “Você atingiu o limite diário de envio de dicas para este produtor.” |


# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN01   | Moderação Automática de Conteúdo: Todas as dicas enviadas devem passar por uma verificação automática para bloquear conteúdos ofensivos ou inadequados (Ex: Lista de palavras e expressões proibidas, incluindo palavrões, termos discriminatórios, conteúdo sexual ou violento). |
| RN02   | Histórico de Dicas no Perfil do Usuário: O sistema armazenará o histórico das dicas enviadas pela agrônoma, visível em seu perfil. |
| RN03   | Sistema de Feedback do Produtor: O produtor poderá marcar a dica como “útil”, “já aplicada” ou “não aplicável”, utilizando um botão de seleção única (tipo radio button) com as três opções, para fins de engajamento e retorno. |
| RN04   | Notificação Opcional para o Produtor: Quando uma dica for enviada, o produtor receberá uma notificação por e-mail, respeitando suas configurações de alerta. |

---

* AC01 - Campo de Envio de Dicas no Perfil do Agrônomo: A agrônoma poderá acessar o perfil de um produtor e enviar uma dica utilizando um formulário com até 4 campos: título (opcional - máximo 100 caracteres), conteúdo da dica (obrigatório), caixa de seleção (checkbox) com o texto “Enviar dica anonimamente”, categoria da dica (opcional), e botão de envio. O conteúdo deve ter no máximo 500 caracteres.

###  Tabela de Classes de Equivalência - AC01

| Condição de Entrada                  | Classes Válidas                                      | Classes Inválidas                             |
|-------------------------------------|------------------------------------------------------|------------------------------------------------|
| Título da dica                      | Texto até 100 caracteres ou vazio (1)            | Texto acima de 100 caracteres (2)          |
| Conteúdo da dica                    | Texto obrigatório até 500 caracteres (3)         | Vazio (4) ou acima de 500 caracteres (5)|
| Enviar anonimamente (checkbox)      | Verdadeior ou Falso (6)                                | Valor não definido(verdadeiro ou falso) (7)    |

###  Tabela de Casos de Teste - AC01

| Casos de Teste | Classes de Equivalência      | Entradas                                                                 | Resultado Esperado                              |
|----------------|------------------------------|--------------------------------------------------------------------------|-------------------------------------------------|
| Caso 1         | 1, 3, 6                  | Título: “Adubação correta”, Conteúdo: “Use compostagem”, Anônimo: sim   | Dica enviada com sucesso                        |
| Caso 2         | **2**, 3, 6                  | Título com 150 caracteres                                                | **Erro: título excede limite**                  |
| Caso 3         | 1, **4**, 6                  | Conteúdo vazio                                                           | **Erro: campo obrigatório ausente**             |
| Caso 4         | 1, **5**, 6                  | Conteúdo com 501 caracteres                                              | **Erro: conteúdo excede 500 caracteres**        |
| Caso 5         | 1, 3, **7**                  | Checkbox com valor indefinido                                            | **Erro: valor inválido para checkbox**          |

---

* AC02 - Confirmação de Envio: Após o envio da dica, o sistema deve exibir uma mensagem do tipo modal com o texto “Sua dica foi enviada com sucesso!”, que permaneça visível por 3 segundos ou até que o usuário interaja com a tela.

###  Tabela de Classes de Equivalência - AC02

| Condição de Entrada                  | Classes Válidas                                      | Classes Inválidas                                        |
|-------------------------------------|------------------------------------------------------|-----------------------------------------------------------|
| Tipo da mensagem exibida            | Modal (1)                                            | Toast, banner, nenhuma mensagem, ou outro tipo (2)        |
| Texto da mensagem                   | “Sua dica foi enviada com sucesso!” (3)             | Texto diferente ou ausente (4)                            |
| Tempo de exibição da mensagem       | ≥ 3 segundos ou até interação do usuário (5)        | < 3 segundos sem interação (6)                            |
| Permitir fechamento por interação   | Usuário pode fechar ao clicar/tocar (7)             | Não permite interação ou bloqueia fechamento (8)          |

###  Tabela de Casos de Teste - AC02

| Casos de Teste | Classes de Equivalência     | Entradas                                                                 | Resultado Esperado                                               |
|----------------|-----------------------------|--------------------------------------------------------------------------|------------------------------------------------------------------|
| Caso 1         | 1, 3, 5, 7                   | Modal exibido com texto correto, visível por 3+ segundos ou até clique  | Mensagem exibida corretamente e desaparece ao interagir         |
| Caso 2         | **2**, 3, 5, 7               | Mensagem do tipo toast com texto correto                                | **Erro: tipo da mensagem incorreto (não é modal)**              |
| Caso 3         | 1, **4**, 5, 7               | Modal com texto errado (“Mensagem enviada!”)                            | **Erro: texto da mensagem incorreto**                           |
| Caso 4         | 1, 3, **6**, 7               | Modal com texto certo, mas some em 2s sem interação                     | **Erro: tempo de exibição menor que o mínimo exigido**          |
| Caso 5         | 1, 3, 5, **8**               | Modal correto, mas usuário não consegue fechá-lo                        | **Erro: não permite interação para fechar**                     |

---

* AC03 - Visualização das Dicas pelo Produtor: O produtor deve conseguir ver as dicas recebidas em seu painel, com separação entre lidas e não lidas. As dicas devem ser listadas em ordem cronológica e exibidas com indicadores visuais (ex: selo "Nova") para as não lidas. O produtor poderá marcar dicas como lidas manualmente.

###  Tabela de Classes de Equivalência - AC03

| Condição de Entrada                        | Classes Válidas                                          | Classes Inválidas                                               |
|-------------------------------------------|----------------------------------------------------------|------------------------------------------------------------------|
| Dicas separadas entre lidas e não lidas   | Separação clara com seções ou filtros (1)                | Sem separação ou tudo misturado (2)                             |
| Ordenação das dicas                       | Ordem cronológica (mais recentes no topo) (3)            | Ordem aleatória ou desorganizada (4)                            |
| Indicador visual para dicas não lidas     | Exibe selo "Nova" para não lidas (5)                     | Nenhum indicador visual presente (6)                            |
| Ação de marcar dica como lida             | Usuário consegue marcar manualmente (7)                  | Não é possível marcar ou ação falha (8)                         |

###  Tabela de Casos de Teste - AC03

| Casos de Teste | Classes de Equivalência       | Entradas                                                                                   | Resultado Esperado                                                 |
|----------------|-------------------------------|--------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
| Caso 1         | 1, 3, 5, 7                     | Painel com dicas separadas, ordenadas, selo "Nova" e botão para marcar como lida           | Dicas exibidas corretamente e usuário consegue interagir normalmente |
| Caso 2         | **2**, 3, 5, 7                 | Dicas exibidas sem separação clara entre lidas e não lidas                                 | **Erro: ausência de separação entre estados das dicas**             |
| Caso 3         | 1, **4**, 5, 7                 | Dicas organizadas fora de ordem cronológica                                                | **Erro: ordenação incorreta das dicas**                            |
| Caso 4         | 1, 3, **6**, 7                 | Dicas não lidas aparecem sem selo ou destaque visual                                       | **Erro: falta de indicador para dica não lida**                    |
| Caso 5         | 1, 3, 5, **8**                 | Usuário tenta marcar dica como lida, mas nada acontece                                     | **Erro: funcionalidade de marcar como lida indisponível ou falha** |

---

* AC04 - Limite de Envio de Dicas por Dia: A agrônoma poderá enviar até 3 dicas por dia para o mesmo produtor. Ao atingir o limite, o sistema deve desabilitar o botão de envio e exibir uma mensagem como: “Você atingiu o limite diário de envio de dicas para este produtor.”

###  Tabela de Classes de Equivalência - AC04

| Condição de Entrada                         | Classes Válidas                                           | Classes Inválidas                                                    |
|--------------------------------------------|-----------------------------------------------------------|----------------------------------------------------------------------|
| Quantidade de dicas enviadas no dia        | Até 3 dicas por produtor por dia (1)                      | Mais de 3 dicas por produtor no mesmo dia (2)                        |
| Estado do botão de envio                   | Habilitado enquanto limite não for atingido (3)           | Habilitado mesmo após o limite ou nunca habilita (4)                |
| Exibição da mensagem de limite atingido    | Mensagem exibida ao atingir o limite (5)                  | Nenhuma mensagem ou mensagem incorreta/ausente (6)                  |

###  Tabela de Casos de Teste - AC04

| Casos de Teste | Classes de Equivalência      | Entradas                                                                                         | Resultado Esperado                                                    |
|----------------|------------------------------|--------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| Caso 1         | 1, 3                          | Envio de 1, 2 ou 3 dicas para o mesmo produtor em um único dia                                   | Dicas enviadas com sucesso; botão permanece habilitado                |
| Caso 2         | **2**, **4**, **6**          | Tentativa de enviar 4ª dica no mesmo dia; botão continua habilitado; nenhuma mensagem exibida    | **Erro: sistema permite envio além do limite e não exibe mensagem**   |
| Caso 3         | **2**, 4, 5                   | 4ª tentativa de envio; botão é desabilitado; mensagem correta exibida                            | Dica não enviada; sistema bloqueia corretamente após 3 envios         |
| Caso 4         | 1, **4**, **6**              | Envio de 2 dicas, botão desabilitado e sem mensagem                                   | **Erro: botão desabilitado antes do limite e ausência de mensagem**   |
| Caso 5         | 1, 3, **6**                   | Envio de 3 dicas; botão desabilitado corretamente, mas mensagem não é exibida                    | **Erro: mensagem de limite não exibida**                              |
