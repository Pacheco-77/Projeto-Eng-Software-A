### H1 - **Como Agrônoma**, **quero** dar dicas para os produtores, **para que** eu possa contribuir com práticas agrícolas melhores.

# Critérios de Aceitação

* AC01 - Campo de Envio de Dicas no Perfil do Agrônomo: A agrônoma poderá acessar o perfil de um produtor e enviar uma dica utilizando um formulário com até 4 campos: título (opcional), conteúdo da dica (obrigatório), caixa de seleção (checkbox) com o texto “Enviar dica anonimamente”, categoria da dica (opcional), e botão de envio. O conteúdo deve ter no máximo 500 caracteres.
* AC02 - Confirmação de Envio: Após o envio da dica, o sistema deve exibir uma mensagem como “Sua dica foi enviada com sucesso!” por pelo menos 3 segundos ou até o usuário interagir com a tela.
* AC03 - Visualização das Dicas pelo Produtor: O produtor deve conseguir ver as dicas recebidas em seu painel, com separação entre lidas e não lidas. As dicas devem ser listadas em ordem cronológica e exibidas com indicadores visuais (ex: selo "Nova") para as não lidas. O produtor poderá marcar dicas como lidas manualmente.
* AC04 - Limite de Envio de Dicas por Dia: A agrônoma poderá enviar até 3 dicas por dia para o mesmo produtor. Ao atingir o limite, o sistema deve desabilitar o botão de envio e exibir uma mensagem como: “Você atingiu o limite diário de envio de dicas para este produtor.”

# Regras de Negócio

* RN01	- Moderação Automática de Conteúdo: Todas as dicas enviadas devem passar por uma verificação automática para bloquear conteúdos ofensivos ou inadequados.
* RN02	- Histórico de Dicas no Perfil do Usuário: O sistema armazenará o histórico das dicas enviadas pela agrônoma, visível em seu perfil.
* RN03	- Sistema de Feedback do Produtor: O produtor poderá marcar a dica como “útil”, “já aplicada” ou “não aplicável”, para fins de engajamento e retorno.
* RN04 -	Notificação Opcional para o Produtor: Quando uma dica for enviada, o produtor receberá uma notificação por e-mail, respeitando suas configurações de alerta.

---
###  Tabela de Classes de Equivalência

| Condição de Entrada                                  | Classes Válidas                                   | Classes Inválidas                                | Classes Inválidas                               |
|------------------------------------------------------|---------------------------------------------------|--------------------------------------------------|-------------------------------------------------|
|                               |                |                  |                                                |
