### H1 - **Como Agrônoma**, **quero** dar dicas para os produtores, **para que** eu possa contribuir com práticas agrícolas melhores.

# Critérios de Aceitação

* AC01 - Campo de Envio de Dicas no Perfil do Agrônomo: A agrônoma poderá acessar o perfil de um produtor e enviar uma dica utilizando um formulário com até 4 campos: título (opcional - máximo 100 caracteres), conteúdo da dica (obrigatório), caixa de seleção (checkbox) com o texto “Enviar dica anonimamente”, categoria da dica (opcional), e botão de envio. O conteúdo deve ter no máximo 500 caracteres.
* AC02 - Confirmação de Envio: Após o envio da dica, o sistema deve exibir uma mensagem como “Sua dica foi enviada com sucesso!” por pelo menos 3 segundos ou até o usuário interagir com a tela.
* AC03 - Visualização das Dicas pelo Produtor: O produtor deve conseguir ver as dicas recebidas em seu painel, com separação entre lidas e não lidas. As dicas devem ser listadas em ordem cronológica e exibidas com indicadores visuais (ex: selo "Nova") para as não lidas. O produtor poderá marcar dicas como lidas manualmente.
* AC04 - Limite de Envio de Dicas por Dia: A agrônoma poderá enviar até 3 dicas por dia para o mesmo produtor. Ao atingir o limite, o sistema deve desabilitar o botão de envio e exibir uma mensagem como: “Você atingiu o limite diário de envio de dicas para este produtor.”

# Regras de Negócio

* RN01	- Moderação Automática de Conteúdo: Todas as dicas enviadas devem passar por uma verificação automática para bloquear conteúdos ofensivos ou inadequados (Ex: Lista de palavras e expressões proibidas, incluindo palavrões, termos discriminatórios, conteúdo sexual ou violento)
* RN02	- Histórico de Dicas no Perfil do Usuário: O sistema armazenará o histórico das dicas enviadas pela agrônoma, visível em seu perfil.
* RN03	- Sistema de Feedback do Produtor: O produtor poderá marcar a dica como “útil”, “já aplicada” ou “não aplicável”, utilizando um botão de seleção única (tipo radio button) com as três opções, para fins de engajamento e retorno.
* RN04 -	Notificação Opcional para o Produtor: Quando uma dica for enviada, o produtor receberá uma notificação por e-mail, respeitando suas configurações de alerta.

---
###  Tabela de Classes de Equivalência

| Condição de Entrada                  | Classes Válidas                                      | Classes Inválidas                            |
|-------------------------------------|------------------------------------------------------|-----------------------------------------------|
| Título                              | Título ≤ 100 caracteres ou vazio (1)             | Título > 100 caracteres (2)               |
| Conteúdo da dica                    | Texto não vazio até 500 caracteres (3)           | Vazio (4), >500 caracteres (5)        |
| Enviar anonimamente (checkbox)      | Verdadeiro / Falso (6)                           | Tipo inválido ou nulo (7)                 |
| Categoria                           | Categoria válida ou vazio (8)                    | Categoria inválida/inexistente (9)        |
| Limite diário                       | Até 3 dicas por dia (10)                         | Mais de 3 dicas (**11**)                      |
| Verificação de conteúdo             | Sem termos ofensivos (12)                        | Termos ofensivos/inadequados (13)         |

---
###  Tabela de Casos de Teste

| Casos de Teste | Classes de Equivalência   | Entradas                                                                 | Resultado Esperado                |
|----------------|---------------------------|--------------------------------------------------------------------------|-----------------------------------|
| Caso 1         | 1, 3, 6, 8, 10, 12     | Título: “Solo”, Conteúdo: “Adube após a chuva”, Anônimo: sim, Categoria: “Plantio”, 1ª dica do dia | Dica válida enviada               |
| Caso 2         | **2**, 3, 6, 8, 10, 12     | Título: 150 caracteres, Conteúdo: “Regue à tarde”, Anônimo: não         | **Dica inválida** (título longo) |
| Caso 3         | 1, **4**, 6, 8, 10, 12     | Título: “”, Conteúdo: “”, Anônimo: sim                                  | **Dica inválida** (sem conteúdo) |
| Caso 4         | 1, **5**, 6, 8, 10, 12     | Título: “Raízes”, Conteúdo: texto com 501 caracteres                    | **Dica inválida** (excede limite) |
| Caso 5         | 1, 3, 6, 8, **11**, 12     | Título: “Dica 4”, Conteúdo: “Evite encharcar”, 4ª dica do dia           | **Dica bloqueada** (limite diário) |
| Caso 6         | 1, 3, 6, **9**, 10, 12     | Categoria: “Xpto”                                                       | **Dica inválida** (categoria inexistente) |
| Caso 7         | 1, 3, 6, 8, 10, **13**     | Conteúdo: “Essa ideia é idiota”                                         | **Dica rejeitada pela moderação** |
