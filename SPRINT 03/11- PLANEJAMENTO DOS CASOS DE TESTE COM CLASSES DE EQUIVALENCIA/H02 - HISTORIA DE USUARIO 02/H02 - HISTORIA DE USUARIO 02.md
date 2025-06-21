### H2 - Como **consumidor**, **eu gostaria de** ter a possibilidade de um contato direto com os fornecedores, **para que** eu possa verificar pessoalmente a qualidade dos produtos (ex: fresco, maduro, sem amassados).

---
### Critérios de Aceitação 

| Código | Descrição |
|------- | --------- |
| AC06 | O vendedor deverá inserir informações de contato, como telefone, e-mail e endereço. |
| AC07 | É necessário que tenha um botão de Contato com fornecedor na página de cada produto. |
| AC08 | O contato entre consumidor e fornecedor é opcional e ocorrerá através do chat interno, telefone ou e-mail. |
| AC09 | Cada produto deve informar o nome e perfil do vendedor. |
| AC10 | O aplicativo deve garantir a integridade dos dados fornecidos pelo fornecedor conforme a LGPD (Lei Geral de Proteção de Dados – Lei nº 13.709/2018) e criptografia dos dados. |
---

### Regras de Negócio 

| Código | Descrição |
|------- | --------- |
| RN05 | Dados de contatos visíveis devem respeitar as políticas de acordo com a LGPD (Art. 7º, IX). |
| RN06 | O aplicativo não se responsabiliza por contatos fora do aplicativo. |
| RN07 | Mensagens de spam ou com links devem ser bloqueadas automaticamente. |
| RN08 | Os fornecedores devem obrigatoriamente cadastrar telefone, e-mail e endereço. |

### Classes de Equivalência para Contato Direto com Fornecedores

| Condição de Entrada                                      | Classes Válidas                           | Classes Inválidas                     | Classes Inválidas                      |
|----------------------------------------------------------|-------------------------------------------|----------------------------------------|----------------------------------------|
| Cadastro de informações de contato                      | Fornecedor informa telefone, e-mail e endereço **(1)** | Fornecedor informa apenas parte dos dados **(2)** | Fornecedor não informa nenhum dado de contato **(3)** |
| Disponibilidade de botão de contato                     | Botão de contato disponível na página de produto **(4)** | Botão de contato não disponível **(5)** |                                          |
| Canal de comunicação                                     | Contato permitido por chat, telefone ou e-mail **(6)** | Contato permitido apenas por um único canal **(7)** | Contato indisponível (nenhum canal funcional) **(8)** |
| Exibição do nome e perfil do fornecedor                 | Nome e perfil visíveis ao consumidor **(9)** | Nome ou perfil ausente **(10)** |                                          |
| Conformidade com a LGPD                                  | Dados tratados conforme LGPD com criptografia **(11)** | Dados tratados sem LGPD ou sem criptografia **(12)** |                                          |

### Casos de Teste - Contato Direto com Fornecedores

| Casos de Teste | Classes de Equivalência      | Cenário / Entrada                                          | Resultado Esperado          |
|----------------|------------------------------|-----------------------------------------------------------|-----------------------------|
| Caso 1         | 1, 4, 6, 9, 11               | Fornecedor cadastra todos os dados corretamente, botão de contato disponível, múltiplos canais, perfil visível e LGPD atendida | Requisito atendido          |
| Caso 2         | **2**, 4, 6, 9, 11           | Fornecedor informa apenas telefone, mas não e-mail ou endereço | Requisito não atendido      |
| Caso 3         | 1, **5**, 6, 9, 11           | Sem botão de contato na página do produto                | Requisito não atendido      |
| Caso 4         | 1, 4, **7**, 9, 11           | Contato apenas por chat, sem opção de telefone ou e-mail | Requisito parcialmente atendido |
| Caso 5         | 1, 4, 6, **10**, 11          | Nome ou perfil do vendedor ausente na página do produto | Requisito não atendido      |
| Caso 6         | 1, 4, 6, 9, **12**           | Dados visíveis mas sem tratamento conforme LGPD ou sem criptografia | Requisito não atendido      |

