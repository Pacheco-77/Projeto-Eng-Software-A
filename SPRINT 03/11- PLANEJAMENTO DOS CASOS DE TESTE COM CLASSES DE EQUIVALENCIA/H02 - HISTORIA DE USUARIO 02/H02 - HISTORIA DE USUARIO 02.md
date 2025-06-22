# H2 - Como **consumidor**, **eu gostaria de** ter a possibilidade de um contato direto com os fornecedores, **para que** eu possa verificar pessoalmente a qualidade dos produtos (ex: fresco, maduro, sem amassados).


## Critérios de Aceitação 

| Código | Critério de Aceitação                                                                                                                                   |
|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| AC06   | O vendedor deverá inserir informações de contato, como telefone (com 10 ou 11 dígitos numéricos), e-mail (exemplo@dominio.com) e endereço (com pelo menos 5 caracteres). |
| AC07   | Deve haver um botão de **"Contato com o Fornecedor"** na página de cada produto.                                                                         |
| AC08   | O contato entre consumidor e fornecedor é opcional e poderá ocorrer por meio de chat interno, telefone ou e-mail.                                         |
| AC09   | Cada produto deve exibir o nome e o perfil do vendedor.                                                                                                    |
| AC10   | O aplicativo deve garantir a integridade e a segurança dos dados fornecidos pelo fornecedor, conforme a LGPD (Lei nº 13.709/2018), incluindo a criptografia das informações. |



## Regras de Negócio 


| Código | Descrição |
|--------|-----------|
| RN05   | Dados de contatos visíveis devem respeitar as políticas de acordo com a LGPD (Art. 7º, IX). |
| RN06   | O aplicativo não se responsabiliza por contatos fora do aplicativo. |
| RN07   | Mensagens de spam ou com links devem ser bloqueadas automaticamente. |
| RN08   | Os fornecedores devem obrigatoriamente cadastrar telefone, e-mail e endereço. |

### Classes de Equivalência | AC06 | RN08 |

| Condição de Entrada                  | Classes Válidas                        | Classes Inválidas                                    |
|--------------------------------------|----------------------------------------|------------------------------------------------------|
| Telefone com 10 ou 11 dígitos numéricos | Telefone com 10 ou 11 dígitos numéricos (1) | Telefone ausente ou com letras/símbolos/formato incorreto (2) |
| E-mail no formato válido             | E-mail contendo "@" e domínio (3)       | E-mail ausente ou com formato inválido (4)           |
| Endereço com pelo menos 5 caracteres | Endereço com 5 ou mais caracteres (5)   | Endereço ausente ou com menos de 5 caracteres (6)    |


### Casos de Teste | AC06 | RN08|

| Caso de Teste | Classes de Equivalência | Entrada                                                                         | Resultado Esperado |
|---------------|-------------------------|---------------------------------------------------------------------------------|--------------------|
| Caso 1        | 1, 3, 5                 | Telefone: 11987654321<br>Email: vendedor@loja.com<br>Endereço: Rua das Flores | Dados válidos      |
| Caso 2        | 2, 3, 5                 | Telefone: 11A2345678<br>Email: vendedor@loja.com<br>Endereço: Rua das Flores   | Dados inválidos    |
| Caso 3        | 1, 4, 5                 | Telefone: 11987654321<br>Email: vendedorloja.com<br>Endereço: Rua das Flores   | Dados inválidos    |
| Caso 4        | 1, 3, 6                 | Telefone: 11987654321<br>Email: vendedor@loja.com<br>Endereço: Rua             | Dados inválidos    |
| Caso 5        | 2, 4, 6                 | Telefone: ABC123<br>Email: vendedorloja<br>Endereço: Rua                       | Dados inválidos    |
| Caso 6        | 1, 3, 5                 | Telefone: 21999999999<br>Email: teste@exemplo.com<br>Endereço: Avenida Brasil  | Dados válidos      |

### Classes de Equivalência | AC07 | AC08 | RN05 |
| Condição de Entrada                              | Classes Válidas                             | Classes Inválidas                           |
|--------------------------------------------------|--------------------------------------------|--------------------------------------------|
| Exibição do botão "Contato com o Fornecedor"     | Botão visível na página do produto (1)     | Botão ausente na página do produto (2)     |
| Opções de contato disponíveis                   | Chat interno, telefone ou e-mail habilitados (3) | Nenhuma opção de contato disponível (4)    |
| Mensagem enviada pelo consumidor                | Mensagem sem spam e sem links (5)          | Mensagem contendo spam ou links (6)        |
| Consumidor decide contatar                      | Consumidor opta por contato (7)            | Consumidor não opta por contato (8)        |

### Casos de Teste | AC07 | AC08| RN07 |
| Caso de Teste | Classes de Equivalência | Entrada                                                                                          | Resultado Esperado                  |
|---------------|-------------------------|---------------------------------------------------------------------------------------------------|-------------------------------------|
| Caso 1        | 1, 3, 5, 7              | Botão visível, opções de contato disponíveis, mensagem válida, consumidor inicia contato         | Contato realizado com sucesso       |
| Caso 2        | 2, 3, 5, 7              | Botão ausente, opções de contato disponíveis, mensagem válida, consumidor tenta iniciar contato  | Falha: botão ausente                |
| Caso 3        | 1, 4, 5, 7              | Botão visível, mas nenhuma opção de contato disponível, mensagem válida, consumidor tenta contato | Falha: nenhuma opção de contato     |
| Caso 4        | 1, 3, 6, 7              | Botão visível, opções de contato disponíveis, mensagem com spam ou link, consumidor tenta contato | Falha: mensagem bloqueada           |
| Caso 5        | 1, 3, 5, 8              | Botão visível, opções de contato disponíveis, mensagem válida, consumidor não inicia contato      | Sem interação (opcionalidade mantida) |

### Classes de Equivalência 
| Condição de Entrada                                     | Classes Válidas                                 | Classes Inválidas                               |
|---------------------------------------------------------|-------------------------------------------------|------------------------------------------------|
| Exibição do nome do vendedor                           | Nome do vendedor visível na página do produto (1) | Nome do vendedor ausente (2)                  |
| Exibição do perfil do vendedor                         | Perfil (ex.: link ou seção de informações) visível (3) | Perfil do vendedor ausente (4)            |
| Segurança de dados sensíveis (LGPD)                    | Dados sensíveis armazenados de forma segura e criptografada (5) | Dados armazenados de forma insegura (6) |

### Casos de Teste | AC09 | AC10 |

| Caso de Teste | Classes de Equivalência | Entrada                                                                              | Resultado Esperado         |
|---------------|-------------------------|--------------------------------------------------------------------------------------|----------------------------|
| Caso 1        | 1, 3, 5                 | Nome do vendedor e perfil visíveis na página do produto, dados armazenados de forma segura | Exibição e segurança OK    |
| Caso 2        | 2, 3, 5                 | Nome do vendedor ausente, perfil visível, dados armazenados de forma segura         | Falha: Nome do vendedor ausente |
| Caso 3        | 1, 4, 5                 | Nome do vendedor visível, perfil ausente, dados armazenados de forma segura         | Falha: Perfil do vendedor ausente |
| Caso 4        | 1, 3, 6                 | Nome e perfil visíveis, mas dados armazenados de forma não criptografada/insegura   | Falha: Dados não protegidos |
| Caso 5        | 2, 4, 6                 | Nome e perfil ausentes, dados armazenados de forma insegura                         | Falha geral: Nome, perfil e segurança ausentes |

