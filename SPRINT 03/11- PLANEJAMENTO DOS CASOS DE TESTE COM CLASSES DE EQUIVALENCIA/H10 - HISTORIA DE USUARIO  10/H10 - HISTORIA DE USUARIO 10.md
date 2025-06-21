### H10 - **Como consumidor**, eu **gostaria** que estivesse disponível a opção de pagar pelo aplicativo através do pix ou cartão de débito e crédito, **para não** precisar pagar com dinheiro físico na hora da retirada ou entrega da compra.

# Criterios de Aceitação

* AC37 - Pagamentos via Pix devem ser iniciados imediatamente, e o sistema deve exibir status atualizado de forma contínua até a confirmação da transação.
* AC38 - O consumidor deve receber o comprovante e resumo de compra no e-mail.
* AC39 - O sistema deve alertar descontos para pagamentos via Pix.
* AC40 - O aplicativo deve ter a opção de salvar os dados de pagamento.

# Regras de Negócio

* RN33 - Todos os pagamentos devem ser realizados por plataformas certificadas.
* RN34 - Cartões devem ser aceitos nas principais bandeiras.
* RN35 - A opção Pix deve gerar um QR Code dinâmico utilizando uma API de pagamento homologada e compatível com os principais bancos cadastrados no Banco Central.

---
###  Tabela de Classes de Equivalência

| Condição de Entrada                          | Classes Válidas                                                | Classes Inválidas                                |
|---------------------------------------------|-----------------------------------------------------------------|---------------------------------------------------|
| Forma de pagamento escolhida                | Pix, cartão de crédito ou débito (1)                        | Forma inexistente ou não suportada (2)        |
| Início e monitoramento do Pix               | Iniciado imediatamente + status atualizado (3)              | Atraso no início ou ausência de atualização (4)|
| Envio de comprovante e resumo               | Enviado corretamente por e-mail (5)                         | Não enviado ou enviado incorretamente (6)     |
| Alerta de desconto                          | Alerta exibido para pagamento via Pix (7)                   | Nenhum alerta exibido ou para outra forma (8) |
| Salvamento de dados de pagamento            | Aplicativo permite salvar dados (9)                         | Aplicativo não oferece essa opção (10)         |
| Plataforma de pagamento utilizada           | Plataforma certificada (11)                                 | Plataforma não certificada (12)               |
| Bandeira do cartão                          | Aceita (Visa, MasterCard, Elo etc.) (13)                   | Não aceita (14)                               |
| Geração de QR Code (Pix)                    | QR Code dinâmico gerado por API homologada (15)             | QR Code fixo ou API incompatível (16)         |

---
###  Tabela de Casos de Testes

| Casos de Teste | Classes de Equivalência        | Entradas                                                                                  | Resultado Esperado                            |
|----------------|--------------------------------|-------------------------------------------------------------------------------------------|-----------------------------------------------|
| Caso 1         | **1, 3, 5, 7, 9, 11, 13, 15**   | Pagamento via Pix iniciado na hora, status atualizado, QR dinâmico, dados salvos         | Pagamento realizado e e-mail enviado          |
| Caso 2         | **2**, 3, 5, 7, 9, 11, 13, 15   | Pagamento com forma inválida ("boleto")                                                  | **Erro: forma de pagamento não suportada**    |
| Caso 3         | 1, **4**, 5, 7, 9, 11, 13, 15   | Pix com atraso ou sem atualização de status                                               | **Erro: problema no fluxo do Pix**            |
| Caso 4         | 1, 3, **6**, 7, 9, 11, 13, 15   | E-mail com comprovante não foi enviado                                                    | **Erro: ausência de comprovante**             |
| Caso 5         | 1, 3, 5, **8**, 9, 11, 13, 15   | Nenhum alerta de desconto exibido para Pix                                                | **Erro: alerta ausente**                      |
| Caso 6         | 1, 3, 5, 7, **10**, 11, 13, 15  | Aplicativo não oferece opção de salvar dados                                              | **Erro: falta de opção de salvamento**        |
| Caso 7         | 1, 3, 5, 7, 9, **12**, 13, 15   | Plataforma usada não é certificada                                                        | **Erro: pagamento por plataforma inválida**   |
| Caso 8         | 1, 3, 5, 7, 9, 11, **14**, 15   | Cartão da bandeira XYZ (não aceita)                                                       | **Erro: bandeira do cartão não aceita**       |
| Caso 9         | 1, 3, 5, 7, 9, 11, 13, **16**   | QR Code fixo ou gerado por API não homologada                                             | **Erro: QR Code inválido**                    |
