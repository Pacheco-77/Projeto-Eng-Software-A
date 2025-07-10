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



# Critérios de Aceitação

## Tabela de Classes de Equivalência
| Condição de Entrada                              | Classe Válida                | Classe Inválida 1              | Classe Inválida 2             |
|--------------------------------------------------|-------------------------------|-------------------------------|------------------------------|
| Avaliação enviada (texto e/ou imagem)            | Avaliação enviada (1)         | Nenhuma avaliação enviada (2) | Campo de avaliação vazio (3) |
| Imagem anexada à avaliação                       | Imagem incluída (4)           | Imagem corrompida (5)         | Nenhuma imagem enviada (6)   |
| Média das avaliações do produto é exibida        | Média visível (7)             | Média calculada errada (8)    | Média não exibida (9)        |
| Fornecedor respondeu à avaliação                 | Resposta visível (10)         | Resposta invisível (11)       | Nenhuma resposta (12)        |


## Tabela de Casos de Teste
| Caso | Classes de Equivalência | Entrada                                                             | Resultado Esperado                            |
|------|--------------------------|---------------------------------------------------------------------|-----------------------------------------------|
| CT01 | 1, 4, 7, 10              | Avaliação com imagem, média correta, resposta visível              | Avaliação visível com feedback completo       |
| CT02 | 2, 5, 7, 12              | Nenhuma avaliação, imagem corrompida, média correta, sem resposta  | Produto sem feedbacks visíveis                |
| CT03 | 1, 6, 8, 11              | Avaliação sem imagem, média errada, resposta invisível             | Exibição incorreta do sistema de feedback     |
| CT04 | 3, 4, 7, 12              | Campo de avaliação vazio, imagem incluída, média correta, sem resposta | Falha ao enviar avaliação                   |

# Regras de Negócio

## Tabela de Classes de Equivalência
| Condição de Entrada                                   | Classe Válida              | Classe Inválida 1                  | Classe Inválida 2                    |
|--------------------------------------------------------|-----------------------------|-------------------------------------|--------------------------------------|
| Comentário feito dentro do prazo (até 1 mês)           | Dentro do prazo (1)         | Fora do prazo (2)                  | Data indefinida (3)                  |
| Comentário foi editado                                | Editado corretamente (4)    | Editado fora do prazo (5)          | Não editado (6)                      |
| Perfil do comprador é visível                         | Perfil visível (7)          | Perfil oculto (8)                   | Perfil excluído (9)                  |
| Produto está em destaque por boas avaliações          | Produto em destaque (10)    | Destaque incorreto (11)            | Produto não aparece em destaque (12) |


## Tabela de Casos de Teste
| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado                                 |
|------|--------------------------|-------------------------------------------------------------------------|----------------------------------------------------|
| CT01 | 1, 4, 7, 10              | Comentário dentro do prazo, editado corretamente, perfil visível       | Produto destacado com feedbacks                    |
| CT02 | 2, 5, 8, 12              | Comentário fora do prazo, editado fora do prazo, perfil oculto         | Comentário inválido e produto sem destaque         |
| CT03 | 1, 6, 9, 11              | Comentário dentro do prazo, não editado, perfil excluído, destaque errado | Exibição falha e feedback não confiável         |
| CT04 | 3, 4, 7, 10              | Data de comentário indefinida, edição válida, perfil visível           | Feedback com risco de inconsistência temporal      |

