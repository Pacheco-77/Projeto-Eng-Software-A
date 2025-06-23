# **Como** consumidor, eu **gostaria** de um aplicativo com imagens reais dos produtos, **para que** eu possa verificar a qualidade dos produtos.
# Critérios de Aceitação

# Critérios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC21   | Cada produto deve conter pelo menos duas imagens reais. |
| AC22   | O usuário deve poder ampliar as imagens. |
| AC23   | As imagens devem ser atualizadas a cada 3 meses. |
| AC24   | O aplicativo deve informar a data da última modificação da imagem. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN20   | O vendedor é responsável pela qualidade e envio de imagens reais. |
| RN21   | Produtos sem imagens não poderão ser cadastrados. |
| RN22   | As imagens devem seguir um padrão de tamanho e qualidade. |

---
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
