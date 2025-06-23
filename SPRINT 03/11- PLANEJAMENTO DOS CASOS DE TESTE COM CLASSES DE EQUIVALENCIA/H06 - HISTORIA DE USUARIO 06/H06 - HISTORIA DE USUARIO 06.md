# **Como** consumidor, eu **gostaria** de um aplicativo com imagens reais dos produtos, **para que** eu possa verificar a qualidade dos produtos.

# Critérios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC21   | Todo produto cadastrado deve conter no mínimo uma imagem real do mesmo. |
| AC22   | O usuário deve poder ampliar as imagens. |
| AC23   | As imagens devem ser atualizadas a cada 3 meses. |
| AC24   | O aplicativo deve informar a data da última modificação da imagem. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN20   | O vendedor é responsável pela qualidade e envio de imagens reais. |
| RN21   | Produtos sem imagens não poderão ser cadastrados. |
| RN22   | As imagens devem seguir um padrão de tamanho(MÁXIMO 10MB) e formato (PNG, JPEG ou JPG) |


#  Grupo 1 – Requisitos Funcionais de Imagens (AC21 + AC22 + AC23 + AC24 + RN21)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas                                | Classes Inválidas                            |
|------------------------------------------|----------------------------------------------|---------------------------------------------|
| Quantidade de imagens por produto        | Pelo menos 1 imagem real (1)                 | Nenhuma imagem (2)                          |
| Funcionalidade de zoom                   | Zoom funcional (3)                           | Zoom inoperante (4)                         |
| Atualização das imagens                  | Atualizada nos últimos 3 meses (5)           | Mais de 3 meses sem atualização (6)         |
| Exibição da data da última modificação   | Data visível (7)                             | Data ausente (8)                            |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                                                 | Resultado Esperado                     |
|---------------|-------------------------|------------------------------------------------------------------------|---------------------------------------|
| Caso 1        | 1, 3, 5, 7              | Produto com 1 imagem, zoom funcional, imagem atualizada e data visível | Cadastro permitido                    |
| Caso 2        | 2, 3, 5, 7              | Produto sem imagem, com zoom, imagem atualizada e data visível         | Falha: Cadastro bloqueado             |
| Caso 3        | 1, 4, 5, 7              | Produto com imagem, zoom inoperante, imagem atualizada e data visível  | Falha: Zoom não funcional             |
| Caso 4        | 1, 3, 6, 7              | Produto com imagem, zoom funcional, imagem desatualizada e data visível | Falha: Imagem desatualizada          |
| Caso 5        | 1, 3, 5, 8              | Produto com imagem, zoom funcional, imagem atualizada, mas sem data visível | Falha: Data ausente               |

---

#  Grupo 2 – Padrão de Qualidade, Tamanho e Formato das Imagens (RN22 + RN20)

### Classes de Equivalência

| Condição de Entrada                      | Classes Válidas                          | Classes Inválidas                          |
|------------------------------------------|------------------------------------------|-------------------------------------------|
| Tamanho da imagem                        | Até 10MB (9)                              | Maior que 10MB (10)                       |
| Formato da imagem                        | PNG, JPEG ou JPG (11)                    | Outro formato (ex.: GIF, BMP, etc.) (12) |
| Qualidade da imagem (visível e legível)  | Qualidade adequada (13)                  | Imagem de baixa qualidade (14)           |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                               | Resultado Esperado               |
|---------------|-------------------------|---------------------------------------|---------------------------------|
| Caso 1        | 9, 11, 13               | Imagem com até 10MB, formato JPEG e boa qualidade | OK: Imagem aceita             |
| Caso 2        | 10, 11, 13              | Imagem com 15MB, formato JPEG e boa qualidade     | Falha: Tamanho excedido        |
| Caso 3        | 9, 12, 13               | Imagem com 5MB, formato GIF, boa qualidade        | Falha: Formato inválido        |
| Caso 4        | 9, 11, 14               | Imagem com 8MB, formato PNG, baixa qualidade      | Falha: Qualidade insuficiente  |







---aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
###  Tabela de Classes de Equivalência
| Condição de Entrada                                  | Classes Válidas                                   | Classes Inválidas                                | Classes Inválidas                               |
|------------------------------------------------------|---------------------------------------------------|--------------------------------------------------|-------------------------------------------------|
| Produto possui imagem                                | Produto com pelo menos 1 imagem (1)               | Produto sem imagem (2)                           |                                                |
| Formato da imagem                                    | PNG, JPEG ou JPG (3)                              | Formato não permitido (PDF, BMP, GIF, etc.) (4)  |                                                |
| Tamanho da imagem                                    | Tamanho ≤ 10MB (5)                                | Tamanho > 10MB (6)                               |                                                |
| Data da última atualização da imagem                 | Atualizada nos últimos 3 meses (7)                | Atualizada há mais de 3 meses (8)                |                                                |
| Funcionalidade de zoom na imagem                     | Zoom funcionando corretamente (9)                 | Zoom não funciona (10)                           |                                                |
| Campo de data da última atualização                  | Data correta e visível (11)                       | Data não aparece (12)                            | Data incorreta/exibida de forma errada (13)     |

---
### Tabela de Casos de Teste
| Casos de Teste | Classes de Equivalência       | Entradas                                                                                     | Resultado Esperado                                                    |
|----------------|-------------------------------|----------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
| Caso 1           | 1, 3, 5, 7, 9, 11             | Produto com imagem PNG, tamanho 5MB, atualizada há 1 mês, zoom funcionando, data visível     | Produto cadastrado com sucesso.           |
| Caso 2           | 2, 3, 5, 7, 9, 11             | Produto sem imagem, formato JPG, tamanho 5MB                                                | Cadastro bloqueado, mensagem: "Produto precisa ter pelo menos uma imagem" |
| Caso 3           | 1, 4, 5, 7, 9, 11             | Produto com imagem em formato PDF                                                            | Upload bloqueado, mensagem: "Formato inválido, use PNG, JPEG ou JPG"  |
| Caso 4           | 1, 3, 6, 7, 9, 11             | Produto com imagem JPG, tamanho 15MB                                                         | Upload bloqueado, mensagem: "Imagem excede o tamanho máximo de 10MB"  |
| Caso 5           | 1, 3, 5, 8, 9, 11             | Produto com imagem JPG, tamanho 5MB, imagem desatualizada há 5 meses                         | Alerta: "Imagem desatualizada, atualize para continuar"               |
| Caso 6           | 1, 3, 5, 7, 10, 11            | Produto com imagem PNG, tamanho 5MB, zoom não funciona                                       | Produto cadastrado, mas funcionalidade de zoom apresenta erro         |
| Caso 7           | 1, 3, 5, 7, 9, 12             | Produto com imagem JPEG, data da última atualização não aparece                              | Produto cadastrado, mas não exibe a data da imagem                    |
| Caso 8           | 1, 3, 5, 7, 9, 13             | Produto com imagem JPEG, data exibida incorretamente ("00/00/0000")                          | Produto cadastrado, mas apresenta erro na exibição da data da imagem  |

---
