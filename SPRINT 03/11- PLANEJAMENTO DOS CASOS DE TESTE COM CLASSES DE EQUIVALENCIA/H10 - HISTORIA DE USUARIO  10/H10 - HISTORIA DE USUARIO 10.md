### H10 - **Como consumidor**, eu **gostaria** que estivesse disponível a opção de pagar pelo aplicativo através do pix ou cartão de débito e crédito, **para não** precisar pagar com dinheiro físico na hora da retirada ou entrega da compra.

# Criterios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC37   | Pagamentos via Pix devem ser iniciados imediatamente, e o sistema deve exibir status atualizado de forma contínua até a confirmação da transação. |
| AC38   | O consumidor deve receber o comprovante e resumo de compra no e-mail. |
| AC39   | O sistema deve alertar descontos para pagamentos via Pix. |
| AC40   | O aplicativo deve ter a opção de salvar os dados de pagamento. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN33   | Todos os pagamentos devem ser realizados por plataformas certificadas. |
| RN34   | Cartões devem ser aceitos nas principais bandeiras. |
| RN35   | A opção Pix deve gerar um QR Code dinâmico utilizando uma API de pagamento homologada e compatível com os principais bancos cadastrados no Banco Central. |

---

* AC37 - Pagamentos via Pix devem ser iniciados imediatamente, e o sistema deve exibir status atualizado de forma contínua até a confirmação da transação.

###  Tabela de Classes de Equivalência - AC37

| Condição de Entrada                          | Classes Válidas                                           | Classes Inválidas                                                     |
|---------------------------------------------|-----------------------------------------------------------|------------------------------------------------------------------------|
| Início do processo de pagamento              | Pagamento Pix iniciado imediatamente após solicitação (1) | Atraso ou falha na inicialização do Pix (2)                           |
| Atualização do status da transação           | Status atualizado continuamente até a confirmação (3)     | Status parado, desatualizado ou ausente durante o processo (4)        |
| Exibição do status para o usuário            | Exibição clara e contínua na interface (5)                | Status não exibido, incompleto ou com mensagens confusas (6)          |

###  Tabela de Casos de Testes - AC37

| Casos de Teste | Classes de Equivalência      | Entradas                                                                 | Resultado Esperado                                                       |
|----------------|------------------------------|--------------------------------------------------------------------------|---------------------------------------------------------------------------|
| Caso 1         | 1, 3, 5                       | Usuário inicia pagamento Pix; sistema exibe status "Aguardando pagamento", depois "Confirmado" | Fluxo de pagamento executado corretamente com feedback contínuo          |
| Caso 2         | 2, 3, 5          | Sistema demora a iniciar o Pix e não exibe nenhuma informação de status  | **Erro: pagamento não iniciado corretamente e ausência de atualização**  |
| Caso 3         | 1, 4, 5               | Pagamento iniciado, mas status trava em "Aguardando pagamento" e não muda | **Erro: status não atualizado continuamente**                            |
| Caso 4         | 1, 3, 6                  | Pagamento ocorre corretamente, mas interface não exibe status pro usuário | **Erro: ausência de feedback visual durante o processo**                 |

---

* AC38 - O consumidor deve receber o comprovante e resumo de compra no e-mail.

###  Tabela de Classes de Equivalência - AC38

| Condição de Entrada                 | Classes Válidas                                  | Classes Inválidas                                  |
|------------------------------------|-------------------------------------------------|---------------------------------------------------|
| Compra realizada                   | Compra concluída com sucesso (1)                 | Compra não concluída ou falha no pagamento (2)    |
| Envio do e-mail                   | E-mail enviado com comprovante e resumo (3)     | E-mail não enviado ou enviado incompleto (4)      |
| Conteúdo do e-mail                | Comprovante e resumo claros e completos (5)     | Informação faltando, incorreta ou confusa (6)     |

###  Tabela de Casos de Testes - AC38

| Casos de Teste | Classes de Equivalência     | Entradas                                                | Resultado Esperado                                |
|----------------|-----------------------------|---------------------------------------------------------|---------------------------------------------------|
| Caso 1         | 1, 3, 5                     | Compra realizada e e-mail enviado com comprovante      | Consumidor recebe e-mail com comprovante completo |
| Caso 2         | 2, 3, 5         | Compra falhou ou não foi concluída; e-mail não enviado | **Erro: não deve enviar e-mail sem compra concluída** |
| Caso 3         | 1, 4, 5             | Compra concluída, e-mail enviado incompleto ou incorreto| **Erro: e-mail enviado, mas falta comprovante ou resumo** |
| Caso 4         | 1, 3, 6                 | Compra concluída, e-mail enviado, mas conteúdo confuso  | **Erro: conteúdo do e-mail não está claro para o consumidor** |

---

* AC39 - O sistema deve alertar descontos para pagamentos via Pix.

###  Tabela de Classes de Equivalência - AC39

| Condição de Entrada                    | Classes Válidas                                          | Classes Inválidas                                                    |
|---------------------------------------|----------------------------------------------------------|----------------------------------------------------------------------|
| Forma de pagamento selecionada        | Pix (1)                                                  | Outra forma de pagamento (2)                                        |
| Exibição do alerta de desconto        | Alerta visível e claro indicando o desconto (3)          | Alerta ausente, incompleto ou confuso (4)                           |

###  Tabela de Casos de Testes - AC39

| Casos de Teste | Classes de Equivalência     | Entradas                                                        | Resultado Esperado                                                  |
|----------------|-----------------------------|------------------------------------------------------------------|----------------------------------------------------------------------|
| Caso 1         | 1, 3                         | Usuário escolhe Pix como forma de pagamento                     | Alerta de desconto é exibido de forma clara                         |
| Caso 2         | 2, 3                 | Usuário escolhe cartão de crédito e o sistema exibe alerta de desconto | **Erro: alerta de desconto exibido para método sem desconto**       |
| Caso 3         | 1, 4                    | Usuário escolhe Pix, mas o sistema não mostra nenhum alerta     | **Erro: alerta de desconto não exibido mesmo com Pix selecionado**  |  
---

* AC40 - O aplicativo deve ter a opção de salvar os dados de pagamento.

###  Tabela de Classes de Equivalência - AC40

| Condição de Entrada                    | Classes Válidas                                             | Classes Inválidas                                                   |
|---------------------------------------|-------------------------------------------------------------|----------------------------------------------------------------------|
| Opção de salvar dados visível         | Opção clara e acessível na interface (1)                    | Opção ausente ou difícil de localizar (2)                           |
| Escolha do usuário                    | Usuário marca opção de salvar dados (3)                     | Usuário não marca ou opção ignorada (4)                             |
| Comportamento do sistema              | Dados são salvos com segurança e disponíveis para uso (5)   | Dados não são salvos ou são armazenados incorretamente (6)          |

###  Tabela de Casos de Testes - AC40

| Casos de Teste | Classes de Equivalência     | Entradas                                                              | Resultado Esperado                                                    |
|----------------|-----------------------------|-----------------------------------------------------------------------|------------------------------------------------------------------------|
| Caso 1         | 1, 3, 5                      | Usuário vê a opção, marca “Salvar dados” e conclui o pagamento        | Dados salvos com sucesso para uso futuro                             |
| Caso 2         | 2, 3, 5              | Opção não aparece na tela, mas sistema tenta salvar mesmo assim       | **Erro: comportamento incorreto sem consentimento do usuário**        |
| Caso 3         | 1, 4, 5              | Opção visível, mas usuário não marca e sistema salva mesmo assim      | **Erro: dados salvos sem autorização do usuário**                     |
| Caso 4         | 1, 3, 6                  | Usuário marca para salvar, mas dados não ficam disponíveis depois     | **Erro: falha no salvamento ou recuperação dos dados de pagamento**   |

---

* RN33 - Todos os pagamentos devem ser realizados por plataformas certificadas.

###  Tabela de Classes de Equivalência - RN33

| Condição de Entrada                  | Classes Válidas                                 | Classes Inválidas                                               |
|-------------------------------------|-------------------------------------------------|------------------------------------------------------------------|
| Plataforma de pagamento utilizada   | Plataforma certificada e homologada (1)         | Plataforma não certificada ou com origem duvidosa (2)            |

###  Tabela de Casos de Testes - RN33

| Casos de Teste | Classes de Equivalência | Entradas                                                             | Resultado Esperado                                               |
|----------------|--------------------------|----------------------------------------------------------------------|------------------------------------------------------------------|
| Caso 1         | 1                        | Sistema realiza pagamento via plataforma certificada (ex: Pagar.me)  | Pagamento autorizado e conforme com segurança esperada           |
| Caso 2         | 2                    | Sistema tenta usar plataforma não homologada                         | **Erro: uso de plataforma não certificada não é permitido**       |

---

* RN34 - Cartões devem ser aceitos nas principais bandeiras.

###  Tabela de Classes de Equivalência - RN34

| Condição de Entrada             | Classes Válidas                                     | Classes Inválidas                                           |
|--------------------------------|-----------------------------------------------------|--------------------------------------------------------------|
| Bandeira do cartão             | Visa, Mastercard, Elo, Hipercard, Amex, etc. (1)    | Bandeiras não suportadas ou cartões internacionais restritos (2) |

###  Tabela de Casos de Testes - RN34

| Casos de Teste | Classes de Equivalência | Entradas                                             | Resultado Esperado                                    |
|----------------|--------------------------|------------------------------------------------------|-------------------------------------------------------|
| Caso 1         | 1                        | Usuário paga com cartão Visa                         | Pagamento aceito normalmente                          |
| Caso 3         | 2                   | Cartão de bandeira não suportada é inserido          | **Erro: bandeira de cartão não aceita**               |

---

* RN35 - A opção Pix deve gerar um QR Code dinâmico utilizando uma API de pagamento homologada e compatível com os principais bancos cadastrados no Banco Central.

###  Tabela de Classes de Equivalência - RN35

| Condição de Entrada                  | Classes Válidas                                           | Classes Inválidas                                                   |
|-------------------------------------|-----------------------------------------------------------|----------------------------------------------------------------------|
| Tipo de QR Code gerado              | Dinâmico e exclusivo por transação (1)                    | QR Code estático ou reutilizado (2)                                  |
| API utilizada                       | API homologada e reconhecida (3)                          | API desconhecida ou fora dos padrões do BACEN (4)                   |
| Compatibilidade bancária            | Compatível com bancos registrados no Banco Central (5)    | Incompatível com instituições financeiras habilitadas (6)           |

###  Tabela de Casos de Testes - RN35

| Casos de Teste | Classes de Equivalência     | Entradas                                                                 | Resultado Esperado                                                  |
|----------------|-----------------------------|--------------------------------------------------------------------------|----------------------------------------------------------------------|
| Caso 1         | 1, 3, 5                      | Pix gera QR dinâmico via API homologada, compatível com banco do usuário| Pagamento iniciado com sucesso                                       |
| Caso 2         | 2, 3, 5                  | Sistema utiliza QR estático reutilizado                                 | **Erro: QR Code inválido para pagamento Pix dinâmico**              |
| Caso 3         | 1, 4, 5                  | API utilizada não está homologada                                        | **Erro: uso de API de pagamento não homologada**                    |
| Caso 4         | 1, 3, 6                  | QR Code gerado corretamente, mas usuário de banco não compatível         | **Erro: pagamento não pode ser processado com banco informado**     |
