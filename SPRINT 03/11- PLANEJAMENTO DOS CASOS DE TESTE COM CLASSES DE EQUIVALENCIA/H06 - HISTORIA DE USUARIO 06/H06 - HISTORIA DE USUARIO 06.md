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

# Grupo 2 – Padrão de Qualidade, Tamanho e Formato das Imagens (RN22 + RN20)

##Classes de Equivalência

| Condição de Entrada                      | Classes Válidas        | Classes Inválidas                |
|------------------------------------------|------------------------|----------------------------------|
| Tamanho da imagem                        | Até 10MB (1)           | Maior que 10MB (2)               |
| Formato da imagem                        | PNG, JPEG ou JPG (3)   | Outro formato (ex.: GIF, BMP, etc.) (4) |
| Qualidade da imagem (visível e legível)  | Qualidade adequada (5) | Imagem de baixa qualidade (6)    |

---

## Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                                      | Resultado Esperado        |
|---------------|-------------------------|---------------------------------------------|---------------------------|
| Caso 1        | 1, 3, 5                 | Imagem com até 10MB, formato JPEG e boa qualidade | OK: Imagem aceita         |
| Caso 2        | 2, 3, 5                 | Imagem com 15MB, formato JPEG e boa qualidade    | Falha: Tamanho excedido   |
| Caso 3        | 1, 4, 5                 | Imagem com 5MB, formato GIF, boa qualidade       | Falha: Formato inválido   |
| Caso 4        | 1, 3, 6                 | Imagem com 8MB, formato PNG, baixa qualidade     | Falha: Qualidade insuficiente |
