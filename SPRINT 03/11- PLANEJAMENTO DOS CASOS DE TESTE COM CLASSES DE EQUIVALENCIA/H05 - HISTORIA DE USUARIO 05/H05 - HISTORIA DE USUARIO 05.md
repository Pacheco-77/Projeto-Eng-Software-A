# H5- Como consumidor, gostaria de receber feedbacks de outros usuários com sistema de moderação e métricas claras sobre os produtos, para que eu possa avaliar com segurança e transparência a qualidade dos itens antes de comprar.

# Critérios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC17   | Cada produto deve ter uma seção de Avaliações ao final da página, contendo os campos: Nota (Estrelas de 1 - 5, obrigatório) , Título ( Texto - max, 50 caracteres, obrigatório), Texto ( Texto - max, 300 caracteres, opcional), Imagem (Máx. 3 imagens por avaliação, Formatos: JPG/PNG (até 2MB cada), Pré-visualização antes de enviar - Não obrigatório). |
| AC18   | Os consumidores devem poder avaliar os produtos com Imagens (Máx. 3 imagens por avaliação, Formatos: JPG/PNG (até 2MB cada), Pré-visualização antes de enviar - Não obrigatório) e comentários escritos. |
| AC19   | O aplicativo deve exibir a média das avaliações de cada produto. |
| AC20   | Os fornecedores podem responder os usuários através de comentário público na própria avaliação. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN17   | O aplicativo deve filtrar os produtos com melhores avaliações com base na média das notas recebidas (de 1 a 5 estrelas), no número total de avaliações e na presença de comentários escritos e imagens.  |
| RN18   | Os usuários podem (opcional) editar seus comentários no prazo de até 1 mês após a postagem |
| RN19   | O perfil do comprador deve ser visível. |



### AC17 + AC18
### Tabela de Classes de Equivalência
| ID  | Condição de Entrada               | Classe Válida                        | Classe Inválida              | Classe Inválida                  |
|-----|----------------------------------|-------------------------------------|------------------------------|----------------------------------|
| C1  | Campo nota da avaliação          | Nota fornecida entre 1 e 5 (1)      | Nota ausente (2)             | Nota fora do intervalo (3)       |
| C2  | Campo título e texto             | Título e texto preenchidos (4)      | Título ausente (5)           | Texto ausente (6)                |
| C3  | Campo imagem                     | Imagem válida (JPG/PNG ≤ 2MB) (7)   | Imagem ausente (8)           | Formato inválido (9)             |

### Tabela de Casos de Teste - AC17 + AC18
| Caso | Classes de Equivalência | Entrada                                                     | Resultado Esperado                         |
|------|-------------------------|-------------------------------------------------------------|--------------------------------------------|
| CT1  | 1, 4, 7                 | Avaliação com nota, título, texto e imagem válidos         | Avaliação cadastrada com sucesso           |
| CT2  | 2, 4, 7                 | Avaliação sem nota, outros campos válidos                  | Erro: Nota é obrigatória                   |
| CT3  | 3, 4, 7                 | Avaliação com nota fora do intervalo, outros válidos       | Erro: Nota fora do intervalo permitido     |
| CT4  | 1, 5, 7                 | Avaliação sem título, demais campos válidos                | Erro: Título é obrigatório                 |
| CT5  | 1, 6, 7                 | Avaliação sem texto, demais campos válidos                 | Erro: Texto é obrigatório                  |
| CT6  | 1, 4, 8                 | Avaliação sem imagem, demais campos válidos                | Erro: Imagem é obrigatória                 |
| CT7  | 1, 4, 9                 | Avaliação com imagem inválida, demais campos válidos       | Erro: Formato de imagem não suportado      |

### AC19 
### Tabela de Classes de Equivalência
| ID  | Condição de Entrada        | Classe Válida                       | Classe Inválida                    | Classe Inválida                       |
|-----|----------------------------|------------------------------------|------------------------------------|----------------------------------------|
| C1  | Produto com avaliações     | Média calculada corretamente (1)   | Média não exibida (2)              | Média exibida incorretamente (3)       |
| C2  | Produto sem avaliações     | “Sem avaliações” exibido (4)       | Média exibida (5)                  | Texto incorreto exibido (6)            |
| C3  | Formatação da média        | Arredondamento com 1 decimal (7)   | Média não arredondada (8)          | Média com duas casas decimais (9)      |

### Tabela de Casos de Teste - AC19
| Caso | Classes de Equivalência | Entrada                                       | Resultado Esperado                           |
|------|-------------------------|-----------------------------------------------|----------------------------------------------|
| CT1  | 1, 4, 7                 | Produto com avaliações, média correta         | Média exibida corretamente                   |
| CT2  | 2, 4, 7                 | Produto com avaliações, média não aparece     | Erro: Média não exibida                      |
| CT3  | 3, 4, 7                 | Produto com avaliações, média incorreta       | Erro: Média exibida incorretamente           |
| CT4  | 1, 5, 7                 | Produto sem avaliações, média = 0 exibida     | Erro: Média exibida sem avaliações           |
| CT5  | 1, 6, 7                 | Produto sem avaliações, texto errado          | Erro: Texto incorreto exibido                |
| CT6  | 1, 4, 8                 | Média 4.2 exibida como “42”                   | Erro: Formatação incorreta                   |
| CT7  | 1, 4, 9                 | Média 4.2 exibida como “4.25”                 | Erro: Casas decimais excessivas              |




### AC20 + RN19
### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                | Classe Válida                         | Classe Inválida                | Classe Inválida                         |
|-----|------------------------------------|---------------------------------------|--------------------------------|------------------------------------------|
| C1  | Comentário do fornecedor           | Comentário correto exibido (1)        | Comentário não exibido (2)     | Comentário incorreto (3)                 |
| C2  | Autor do comentário                | Usuário é fornecedor (4)              | Outro usuário (5)              | Usuário não autenticado (6)              |
| C3  | Visibilidade do perfil do comprador| Nome visível corretamente (7)         | Nome oculto (8)                | Dados sensíveis expostos (9)             |

### Tabela de Casos de Teste - AC20 + RN19
| Caso | Classes de Equivalência | Entrada                                                 | Resultado Esperado                             |
|------|-------------------------|---------------------------------------------------------|------------------------------------------------|
| CT1  | 1, 4, 7                 | Fornecedor comenta corretamente, perfil visível         | Comentário visível, nome exibido               |
| CT2  | 2, 4, 7                 | Comentário não exibido, mesmo com fornecedor correto    | Erro: Comentário não exibido                   |
| CT3  | 3, 4, 7                 | Comentário mal exibido                                  | Erro: Comentário exibido incorretamente        |
| CT4  | 1, 5, 7                 | Outro usuário comenta                                   | Erro: Apenas fornecedores podem comentar        |
| CT5  | 1, 6, 7                 | Usuário não logado comenta                              | Erro: Autenticação necessária                   |
| CT6  | 1, 4, 8                 | Nome do comprador oculto                                | Erro: Nome deveria estar visível                |
| CT7  | 1, 4, 9                 | Dados sensíveis do comprador aparecem                   | Erro: Exposição indevida de dados               |


### RN17
### Tabela de Classes de Equivalência
| ID  | Condição de Entrada                | Classe Válida                         | Classe Inválida                    | Classe Inválida                  |
|-----|-----------------------------------|--------------------------------------|-----------------------------------|----------------------------------|
| C1  | Filtro por nota alta (≥ 4)        | Apenas notas ≥ 4 exibidas (1)        | Notas < 4 exibidas (2)            | Filtro não aplicado (3)          |
| C2  | Filtro por avaliações com texto   | Somente com texto exibidas (4)       | Sem texto exibidas (5)            | Filtro ignorado (6)              |
| C3  | Filtro por avaliações com imagem  | Somente com imagem exibidas (7)      | Sem imagem exibidas (8)           | Filtro ignorado (9)              |

### Tabela de Casos de Teste - RN17
| Caso | Classes de Equivalência | Entrada                                                    | Resultado Esperado                              |
|------|-------------------------|------------------------------------------------------------|-------------------------------------------------|
| CT1  | 1, 4, 7                 | Filtros de nota, texto e imagem corretamente aplicados    | Apenas avaliações com todos os critérios visíveis |
| CT2  | 2, 4, 7                 | Filtro de nota falha e mostra notas < 4                   | Erro: Avaliações com nota < 4 exibidas           |
| CT3  | 3, 4, 7                 | Filtro de nota não aplicado                               | Erro: Filtro de nota não aplicado                |
| CT4  | 1, 5, 7                 | Filtro de texto falha e mostra avaliações sem comentário  | Erro: Avaliações sem texto exibidas              |
| CT5  | 1, 6, 7                 | Filtro de texto não aplicado                              | Erro: Filtro de comentário não aplicado          |
| CT6  | 1, 4, 8                 | Filtro de imagem falha e mostra avaliações sem imagem     | Erro: Avaliações sem imagem exibidas             |
| CT7  | 1, 4, 9                 | Filtro de imagem não aplicado                             | Erro: Filtro de imagem não aplicado              |


### RN18
### Tabela de Classes de Equivalência
| ID  | Condição de Entrada              | Classe Válida                   | Classe Inválida                | Classe Inválida                    |
|-----|----------------------------------|---------------------------------|--------------------------------|------------------------------------|
| C1  | Tempo desde a avaliação          | Até 30 dias (1)                 | 31 dias (2)                    | 60 dias (3)                        |
| C2  | Usuário do comentário            | Autor original (4)              | Outro usuário (5)              | Usuário não autenticado (6)        |
| C3  | Resultado da edição              | Edição permitida (7)            | Edição negada (8)              | Erro ao editar (9)                 |

### Tabela de Casos de Teste - RN18
| Caso | Classes de Equivalência | Entrada                                     | Resultado Esperado                     |
|------|-------------------------|---------------------------------------------|----------------------------------------|
| CT1  | 1, 4, 7                 | Edição em 10 dias, autor autenticado        | Comentário editado com sucesso         |
| CT2  | 2, 4, 7                 | Edição após 31 dias                         | Erro: Prazo de edição expirado         |
| CT3  | 3, 4, 7                 | Edição após 60 dias                         | Erro: Prazo expirado                   |
| CT4  | 1, 5, 7                 | Outro usuário tenta editar                  | Erro: Usuário não autorizado           |
| CT5  | 1, 6, 7                 | Não autenticado tenta editar                | Erro: Login necessário                 |
| CT6  | 1, 4, 8                 | Edição negada mesmo dentro do prazo         | Erro: Edição não permitida             |
| CT7  | 1, 4, 9                 | Falha no sistema ao tentar editar           | Erro: Problema técnico na edição       |
