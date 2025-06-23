# H16 - Como usuária premium, quero receber receitas saudáveis baseadas nos produtos disponíveis na plataforma para que eu consiga me alimentar bem sem precisar pesquisar ingredientes fora do meu alcance.
## Critérios de Aceitação  
| Código | Descrição |
|------- |---------- |
| AC | O sistema deve sugerir receitas saudáveis baseadas apenas nos produtos disponíveis na plataforma. |
| AC | As sugestões de receitas devem considerar as preferências alimentares da usuária (ex: vegana, low carb, sem glúten). |
| AC | A usuária deve conseguir visualizar o passo a passo da preparação de cada receita sugerida. |
| AC | O sistema deve atualizar as sugestões sempre que houver alterações nos produtos disponíveis na plataforma. |
| AC | A usuária deve ter a opção de salvar receitas favoritas para consultar depois. |

## Regra de Negócio
| Código | Descrição |
|------- |---------- |
| RN | Apenas usuárias com plano premium terão acesso à funcionalidade de sugestões personalizadas de receitas. |
| RN | O sistema só deve sugerir receitas que utilizem produtos atualmente disponíveis no estoque da plataforma. |
| RN | As informações nutricionais das receitas devem estar disponíveis e visíveis para a usuária. |
| RN | Caso um produto usado em uma receita fique indisponível, a receita deve ser retirada das sugestões até que o produto volte ao estoque. |
| RN | As preferências alimentares da usuária devem ser configuráveis no perfil dela dentro da plataforma. |

---------------------
###  Tabela de Classes de Equivalência 

| Condição de Entrada | Classes Válidas | Classes Inválidas | Classes Inválidas |
|---------------------|-----------------|-------------------|-------------------|
| Tipo de conta da usuária | Usuária premium (1) | Usuária free (2) | Usuária não autenticada (3) |
| Disponibilidade dos produtos no estoque | Produto disponível (4) | Produto fora de estoque (5) | Produto removido recentemente (6) |
| Preferências alimentares configuradas | Preferência registrada e compatível (7) | Nenhuma preferência configurada (8) | Preferência incompatível com o estoque (9) |
| Detalhes da receita | Receita com passo a passo e informações nutricionais (10) | Receita sem passo a passo (11) | Receita sem informações nutricionais (12) |
| Opção de favoritar receita | Usuária salva receita favorita (13) | Usuária tenta favoritar sem estar logada (14) | Sistema falha ao salvar a receita (15) |

##  Tabela de Casos de Teste (H16 - Sugestão de Receitas Personalizadas)

| Caso de Teste | Classes de Equivalência | Entradas | Resultado Esperado |
|---------------|-------------------------|--------- |-------------------|
| Caso 1 | 1, 4, 7, 10, 13 | Usuária premium com preferência configurada acessa receitas disponíveis, visualiza detalhes completos e favorita a receita | Funcionalidade executada com sucesso |
| Caso 2 | 2, 4, 7, 10, 13 | Usuária free tenta acessar as sugestões de receita | Acesso negado |
| Caso 3 | 1, 5, 7, 10, 13 | Produto fora de estoque, mas usuária tenta visualizar a receita | Receita não aparece nas sugestões |
| Caso 4 | 1, 4, 8, 10, 13 | Usuária premium sem preferências configuradas tenta acessar sugestões | Sistema solicita configuração de preferências |
| Caso 5 | 1, 4, 7, 11, 13 | Receita sem passo a passo detalhado | Erro ou alerta ao exibir detalhes da receita |
| Caso 6 | 1, 4, 7, 10, 14 | Usuária tenta favoritar receita sem estar logada | Sistema bloqueia ação e solicita login |
| Caso 7 | 1, 6, 7, 10, 13 | Produto recentemente removido, mas ainda aparece na receita | Sistema retira a receita das sugestões |
| Caso 8 | 1, 4, 9, 10, 13 | Usuária com preferência incompatível com o estoque tenta acessar sugestões | Sistema informa que não há receitas disponíveis para as preferências atuais |
| Caso 9 | 1, 4, 7, 12, 13 | Receita sem informações nutricionais | Sistema bloqueia ou exibe alerta ao tentar visualizar detalhes |
| Caso 10 | 1, 4, 7, 10, 15 | Sistema falha ao salvar receita favorita | Mensagem de erro ao tentar favoritar |
