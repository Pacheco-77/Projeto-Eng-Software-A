# H3 - Como agrônoma, quero uma diferenciação clara entre os produtores disponíveis no app, para que eu possa escolher aqueles que seguem métodos agrícolas que eu aprovo.



## Critérios de Aceitação 

| Código | Descrição |
|--------|-----------|
| AC11   | Exibição de Selos/Ícones: O app deve exibir selos visuais , (“Livre de Agrotóxicos”) dado ao certificação emitido pelo Ministério da Agricultura e Pecuária, esse sele é exibido nos perfis dos produtores. |
| AC12   | Filtro de Pesquisa por Método Agrícola: A agrônoma deve conseguir filtrar os produtores com base em métodos agrícolas (ex: Permacultura, Produção Convencional, Agricultura Familiar). |
| AC13   | Descrição Transparente no Perfil: Cada produtor deve apresentar uma seção no perfil com a descrição dos métodos agrícolas utilizados. |


## Regras de Negócio 

| Código | Descrição |
|--------|-----------|
| RN09   | Classificação Obrigatória no Cadastro do Produtor: Todo produtor deve, no momento do cadastro, indicar o tipo de agricultura praticado. |
| RN10   | Uso Controlado de Selos de Produção: Selos como “Orgânico” ou “Agroecológico” só poderão ser exibidos se o produtor apresentar documentação comprobatória via Ministério da Agricultura e Pecuária |
| RN11   | Atualização Regular do Perfil Agrícola: Produtores devem atualizar as informações sobre seus métodos agrícolas a cada 6 meses, havendo um aviso prévio de 15 dias de antecedência para atualização via e-mail e pela notificação no aplicativo, caso contrario o celo será removido. |
| RN12   | O filtro pode ser desativado e ativado conforme a vontade do usuário |
| RN13   | Sistema de Denúncia de Informações Falsas: Consumidores poderão denunciar perfis com informações agrícolas inconsistentes, o que iniciará uma verificação manual pela administração do app. |

# Grupo 1 – Selos Visuais (AC11 + RN10)
### Classes de Equivalência (AC11 + RN10)
| Condição de Entrada                          | Classes Válidas                   | Classes Inválidas                    |
|----------------------------------------------|-----------------------------------|--------------------------------------|
| Produtor apresentou documentação comprobatória | Sim (1)                          | Não (2)                              |
| Tipo de selo                                 | Selo autorizado pelo Ministério (3) | Selo não autorizado (4)            |

### Casos de Teste (AC11 + RN10)

| Caso de Teste | Classes de Equivalência | Entrada                         | Resultado Esperado        |
|---------------|-------------------------|---------------------------------|---------------------------|
| Caso 1        | 1, 3                    | Documento válido + selo autorizado | Selo exibido corretamente |
| Caso 2        | 2, 3                    | Sem documentação + selo autorizado | Selo bloqueado            |
| Caso 3        | 1, 4                    | Documento válido + selo não autorizado | Selo bloqueado            |

# Grupo 2 – Filtro de Pesquisa (AC12 + RN12)
### Classes de Equivalência (AC12 + RN12)
| Condição de Entrada                | Classes Válidas             | Classes Inválidas          |
|------------------------------------|-----------------------------|----------------------------|
| Filtro de pesquisa ativado         | Filtro ativo (1)           | Filtro desativado (2)      |
| Método agrícola selecionado        | Método válido (ex: Permacultura, Agricultura Familiar) (3) | Método inexistente (4) |

### Casos de Teste (AC12 + RN12)
| Caso de Teste | Classes de Equivalência | Entrada                              | Resultado Esperado          |
|---------------|-------------------------|--------------------------------------|-----------------------------|
| Caso 1        | 1, 3                    | Filtro ativo + método válido selecionado | Lista de produtores filtrada |
| Caso 2        | 2, 3                    | Filtro desativado + método válido    | Todos os produtores exibidos |
| Caso 3        | 1, 4                    | Filtro ativo + método inválido       | Nenhum produtor retornado ou mensagem de erro |

# Grupo 3 – Perfil do Produtor (AC13 + RN09)
###  Classes de Equivalência (AC13 + RN09)

| Condição de Entrada                 | Classes Válidas             | Classes Inválidas          |
|-------------------------------------|-----------------------------|----------------------------|
| Tipo de agricultura cadastrado      | Tipo preenchido (1)         | Tipo não preenchido (2)    |
| Descrição dos métodos agrícolas     | Descrição presente (3)      | Descrição ausente (4)      |

### Casos de Teste (AC13 + RN09)

| Caso de Teste | Classes de Equivalência | Entrada                              | Resultado Esperado          |
|---------------|-------------------------|--------------------------------------|-----------------------------|
| Caso 1        | 1, 3                    | Tipo cadastrado + descrição preenchida | Perfil exibido corretamente |
| Caso 2        | 2, 3                    | Tipo não cadastrado + descrição presente | Erro: cadastro incompleto |
| Caso 3        | 1, 4                    | Tipo cadastrado + descrição ausente   | Erro: perfil incompleto |


# Grupo 4 – Atualização do Perfil (RN11)
###  Classes de Equivalência (RN11)

| Condição de Entrada                 | Classes Válidas             | Classes Inválidas          |
|-------------------------------------|-----------------------------|----------------------------|
| Tempo desde a última atualização    | Menos de 6 meses (1)        | Mais de 6 meses (2)        |
| Aviso de atualização enviado        | Aviso enviado 15 dias antes (3) | Aviso não enviado (4)    |
| Perfil atualizado após o aviso      | Perfil atualizado (5)       | Perfil não atualizado (6)  |

###  Casos de Teste (RN11)

| Caso de Teste | Classes de Equivalência | Entrada                              | Resultado Esperado          |
|---------------|-------------------------|--------------------------------------|-----------------------------|
| Caso 1        | 1, 3, 5                 | Atualização dentro do prazo com aviso | Perfil mantido com selo |
| Caso 2        | 2, 3, 5                 | Mais de 6 meses, aviso enviado, sem atualização | Selo removido |
| Caso 3        | 1, 4, 5                 | Mais de 6 meses sem atualização  |
| Caso 3        | 1, 3, 6                 |                                  |              |

#  Grupo 5 – Denúncia de Informações Falsas (RN13)
###  Classes de Equivalência (RN13)

| Condição de Entrada             | Classes Válidas                  | Classes Inválidas                |
|---------------------------------|----------------------------------|---------------------------------|
| Existência de denúncia          | Denúncia realizada (1)          | Nenhuma denúncia (2)            |
| Processo de verificação manual  | Verificação realizada (3)       | Verificação não realizada (4)   |
| Resultado da verificação        | Informação confirmada (5)       | Informação falsa comprovada (6) |

###  Casos de Teste (RN13)

| Caso de Teste | Classes de Equivalência | Entrada                                      | Resultado Esperado          |
|---------------|-------------------------|---------------------------------------------|-----------------------------|
| Caso 1        | 1, 3, 5                 | Denúncia feita, verificação realizada, dados confirmados | Perfil permanece sem alteração |
| Caso 2        | 2, 3, 5                | Denúncia feita, verificação realizada, informação falsa detectada | Perfil bloqueado ou informação removida |
| Caso 3        | 1, 4, 5                 | Nenhuma denúncia, nenhuma verificação        | Sem alteração no perfil |
| Caso 4        | 1, 3, 6                 | Nenhuma denúncia, nenhuma verificação        | Sem alteração no perfil |



