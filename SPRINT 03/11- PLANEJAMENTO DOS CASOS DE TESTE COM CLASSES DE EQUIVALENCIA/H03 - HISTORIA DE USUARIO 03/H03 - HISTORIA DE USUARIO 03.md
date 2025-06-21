# H3 - Como agrônoma, quero uma diferenciação clara entre os produtores disponíveis no app, para que eu possa escolher aqueles que seguem métodos agrícolas que eu aprovo.



## Critérios de Aceitação 

- Exibição de Selos/Ícones: O app deve exibir selos visuais, como "Livre de Agrotóxicos", dado ao certificação emitido pelo Ministério da Agricultura e Pecuária, esse selo é exibido nos perfis dos produtores.
- Filtro de Pesquisa por Método Agrícola: A agrônoma deve conseguir filtrar os produtores com base em métodos agrícolas (ex: Permacultura, Produção Convencional, Agricultura Familiar).
- Descrição Transparente no Perfil: Cada produtor deve apresentar uma seção no perfil com a descrição dos métodos agrícolas utilizados.


## Regras de Negócio 

- Classificação Obrigatória no Cadastro do Produtor: Todo produtor deve, no momento do cadastro, indicar o tipo de agricultura praticado.
- Uso Controlado de Selos de Produção: Selos como "Orgânico" ou "Agroecológico" só poderão ser exibidos se o produtor apresentar documentação comprobatória via Ministério da Agricultura e Pecuária.
- Atualização Regular do Perfil Agrícola: Produtores devem atualizar as informações sobre seus métodos agrícolas a cada 6 meses, com aviso prévio de 15 dias via e-mail e notificação no app. Caso contrário, o selo será removido.
- O filtro pode ser desativado e ativado conforme a vontade do usuário.
- Sistema de Denúncia e Informações Falsas: Consumidores poderão denunciar perfis com informações agrícolas inconsistentes, iniciando uma verificação manual pela administração do app.

### Classes de Equivalência - H3: Diferenciação entre Produtores por Métodos Agrícolas

| Condição de Entrada                                    | Classes Válidas                                              | Classes Inválidas                                        | Classes Inválidas                            |
|--------------------------------------------------------|--------------------------------------------------------------|----------------------------------------------------------|---------------------------------------------|
| Exibição de selos no perfil do produtor                | Selo visível e correto conforme certificação oficial **(1)** | Selo ausente mesmo com certificação **(2)**              | Selo exibido sem ter certificação válida **(3)** |
| Filtro de pesquisa por método agrícola                 | Filtro disponível e funcional **(4)**                        | Filtro indisponível **(5)**                              | Filtro disponível, mas sem funcionalidade correta **(6)** |
| Descrição de métodos agrícolas no perfil               | Descrição clara e completa no perfil **(7)**                 | Descrição incompleta ou vaga **(8)**                     | Nenhuma descrição disponível **(9)** |
| Classificação obrigatória no cadastro                  | Produtor informa tipo de agricultura ao cadastrar **(10)**   | Produtor não informa tipo de agricultura **(11)**        | Informação inconsistente ou inválida **(12)** |
| Documentação de selos (Orgânico/Agroecológico)         | Documentação válida e aceita pelo sistema **(13)**           | Documentação inválida ou ausente **(14)**                | Selo sendo exibido sem documentação **(15)** |
| Atualização de perfil agrícola                         | Informações atualizadas dentro do prazo **(16)**             | Informações desatualizadas **(17)**                      | Selo ativo mesmo com informações desatualizadas **(18)** |
| Sistema de denúncia de informações falsas              | Denúncia recebida e processada corretamente **(19)**         | Denúncia ignorada pelo sistema **(20)**                  | Sistema de denúncia indisponível **(21)** |
| Controle de exibição do filtro pelo usuário            | Usuário pode ativar/desativar o filtro **(22)**              | Filtro sempre ativo (sem controle pelo usuário) **(23)** | Filtro nunca ativo (mesmo quando usuário deseja) **(24)** |


### Casos de Teste - H3: Diferenciação entre Produtores por Métodos Agrícolas

| Caso de Teste | Classes de Equivalência                       | Cenário / Entrada                                                                                                                                   | Resultado Esperado        |
|---------------|-----------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| Caso 1        | 1, 4, 7, 10, 13, 16, 19, 22                   | Produtor cadastra o tipo de agricultura, apresenta documentação válida, exibe selo correto, filtro funciona, descrição no perfil está clara e atualizada, sistema de denúncia funcional, e usuário pode  ativar/desativar filtro. | Requisito atendido        |
| Caso 2        | **2**, 4, 7, 10, 13, 16, 19, 22               | Produtor tem certificação válida mas o selo não é exibido no perfil.                                                                                 | Requisito não atendido    |
| Caso 3        | 1, **5**, 7, 10, 13, 16, 19, 22               | Filtro de pesquisa por método agrícola não está disponível no app.                                                                                    | Requisito não atendido    |
| Caso 4        | 1, 4, **8**, 10, 13, 16, 19, 22               | Descrição do método agrícola está incompleta ou vaga no perfil do produtor.                                                                           | Requisito não atendido    |
| Caso 5        | 1, 4, 7, **11**, 13, 16, 19, 22               | Produtor não informou o tipo de agricultura ao se cadastrar.                                                                                         | Requisito não atendido    |
| Caso 6        | 1, 4, 7, 10, **14**, 16, 19, 22               | Produtor não apresentou documentação para o selo, mas tentou exibir o selo mesmo assim.                                                              | Requisito não atendido    |
| Caso 7        | 1, 4, 7, 10, 13, **17**, 19, 22               | Informações do perfil agrícola estão desatualizadas (última atualização há mais de 6 meses).                                                         | Requisito não atendido    |
| Caso 8        | 1, 4, 7, 10, 13, 16, **20**, 22               | Consumidor fez uma denúncia de perfil com informação falsa, mas o sistema ignorou e não processou a denúncia.                                        | Requisito não atendido    |
| Caso 9        | 1, 4, 7, 10, 13, 16, 19, **23**               | Filtro sempre ativo, mesmo quando o usuário tenta desativar.                                                                                          | Requisito não atendido    |
| Caso 10       | 1, 4, 7, 10, 13, 16, 19, **24**               | Filtro nunca fica ativo, mesmo quando o usuário tenta ativar.                                                                                         | Requisito não atendido    |
