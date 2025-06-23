# **Como** consumidor, eu **gostaria** de um aplicativo com imagens reais dos produtos, **para que** eu possa verificar a qualidade dos produtos.

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

#  Grupo 1 – Quantidade Mínima de Imagens (AC21 | RN21)

### Classes de Equivalência

| Condição de Entrada                  | Classes Válidas        | Classes Inválidas                          |
|--------------------------------------|------------------------|-------------------------------------------|
| Quantidade de imagens por produto    | Pelo menos 2 imagens (1) | Menos de 2 imagens ou nenhuma (2)         |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                       | Resultado Esperado                         |
|---------------|-------------------------|-------------------------------|-------------------------------------------|
| Caso 1        | 1                      | Produto com 2 imagens          | Cadastro permitido                        |
| Caso 2        | 2                      | Produto com 1 ou nenhuma imagem | Falha: Cadastro bloqueado                |

---

#  Grupo 2 – Funcionalidade de Zoom (AC22)

### Classes de Equivalência

| Condição de Entrada           | Classes Válidas  | Classes Inválidas   |
|-------------------------------|------------------|---------------------|
| Funcionalidade de zoom        | Zoom funcional (3) | Zoom inoperante (4) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                | Resultado Esperado       |
|---------------|-------------------------|------------------------|--------------------------|
| Caso 1        | 3                      | Usuário consegue ampliar a imagem | Zoom funcionando        |
| Caso 2        | 4                      | Usuário tenta ampliar e não consegue | Falha: Zoom não funcional |

---

# Grupo 3 – Atualização Periódica das Imagens (AC23)

### Classes de Equivalência

| Condição de Entrada           | Classes Válidas               | Classes Inválidas                       |
|-------------------------------|-------------------------------|-----------------------------------------|
| Atualização das imagens       | Atualizada nos últimos 3 meses (5) | Mais de 3 meses sem atualização (6) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                          | Resultado Esperado               |
|---------------|-------------------------|----------------------------------|---------------------------------|
| Caso 1        | 5                      | Imagem com data de modificação dentro de 3 meses | OK: Atualização válida         |
| Caso 2        | 6                      | Imagem com data superior a 3 meses | Falha: Imagem desatualizada     |

---

#  Grupo 4 – Exibição da Data da Última Modificação (AC24)

### Classes de Equivalência

| Condição de Entrada                  | Classes Válidas        | Classes Inválidas           |
|--------------------------------------|------------------------|-----------------------------|
| Exibição da data da última modificação | Data visível (7)      | Data ausente (8)            |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                     | Resultado Esperado          |
|---------------|-------------------------|-----------------------------|-----------------------------|
| Caso 1        | 7                      | Data de modificação visível | OK: Data exibida            |
| Caso 2        | 8                      | Sem data de modificação     | Falha: Data ausente         |

---

#  Grupo 5 – Padrão de Qualidade e Tamanho das Imagens (RN22 | RN20)

### Classes de Equivalência

| Condição de Entrada              | Classes Válidas               | Classes Inválidas          |
|----------------------------------|-------------------------------|----------------------------|
| Qualidade e tamanho da imagem    | Imagem dentro do padrão de qualidade e tamanho (9) | Imagem fora do padrão (10) |

### Casos de Teste

| Caso de Teste | Classes de Equivalência | Entrada                          | Resultado Esperado               |
|---------------|-------------------------|----------------------------------|---------------------------------|
| Caso 1        | 9                      | Imagem com qualidade e tamanho corretos | OK: Padrão atendido          |
| Caso 2        | 10                     | Imagem com baixa resolução ou tamanho incorreto | Falha: Imagem fora do padrão |









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
