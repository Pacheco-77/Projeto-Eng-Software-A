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
| Caso 2         | **2**, **4**, **6**           | Sistema demora a iniciar o Pix e não exibe nenhuma informação de status  | **Erro: pagamento não iniciado corretamente e ausência de atualização**  |
| Caso 3         | 1, **4**, **6**               | Pagamento iniciado, mas status trava em "Aguardando pagamento" e não muda | **Erro: status não atualizado continuamente**                            |
| Caso 4         | 1, 3, **6**                   | Pagamento ocorre corretamente, mas interface não exibe status pro usuário | **Erro: ausência de feedback visual durante o processo**                 |
| Caso 5         | 1, 3, 5                       | Transação confirmada em menos de 10 segundos; status reflete a confirmação imediatamente | Pagamento Pix processado e confirmado com sucesso, status exibido em tempo real |

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
| Caso 2         | **2**, **4**, **6**         | Compra falhou ou não foi concluída; e-mail não enviado | **Erro: não deve enviar e-mail sem compra concluída** |
| Caso 3         | 1, **4**, **6**             | Compra concluída, e-mail enviado incompleto ou incorreto| **Erro: e-mail enviado, mas falta comprovante ou resumo** |
| Caso 4         | 1, 3, **6**                 | Compra concluída, e-mail enviado, mas conteúdo confuso  | **Erro: conteúdo do e-mail não está claro para o consumidor** |
| Caso 5         | 1, 3, 5                     | Compra realizada, e-mail recebido e conteúdo revisado   | E-mail recebido com comprovante e resumo claros   |

---

###  Tabela de Classes de Equivalência - AC39

###  Tabela de Casos de Testes - AC39

---

###  Tabela de Classes de Equivalência - AC40

###  Tabela de Casos de Testes - AC40


