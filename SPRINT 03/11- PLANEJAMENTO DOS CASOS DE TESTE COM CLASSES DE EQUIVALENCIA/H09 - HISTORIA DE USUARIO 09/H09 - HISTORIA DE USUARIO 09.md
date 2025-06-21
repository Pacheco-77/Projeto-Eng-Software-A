# H9- Como produtor rural, quero ver os comentários e avaliações dos consumidores, para saber se eles ficaram satisfeitos e melhorar minha oferta.

# Critérios de Aceitação

| Código | Descrição |
|--------|-----------|
| AC34   | O produtor pode visualizar avaliações em uma aba separada do perfil. |
| AC35   | Cada avaliação deve ter nota (1 a 5) e comentário. |
| AC36   | Só consumidores que concluíram um pedido podem avaliar. |

# Regras de Negócio

| Código | Descrição |
|--------|-----------|
| RN30   | Um consumidor só pode avaliar uma compra uma vez. |
| RN31   | Avaliações ofensivas podem ser denunciadas. |
| RN32   | As avaliações influenciam a visibilidade dos produtos. |



### AC34-	O produtor pode visualizar avaliações em uma aba separada do perfil.
### Tabela de Classes de Equivalência – AC34

| ID  | Condição de Entrada                                   | Classe Válida                     | Classe Inválida 1                                        | Classe Inválida 2                                 |
|-----|--------------------------------------------------------|------------------------------------|-----------------------------------------------------------|---------------------------------------------------|
| C1  | Perfil do produtor possui aba de avaliações           | Sim (1)                            | Aba de avaliações ausente (2)                             | Aba localizada incorretamente (3)                 |
| C2  | Avaliações são carregadas corretamente                | Sim (4)                            | Avaliações não carregam (5)                               | Carregamento parcial ou com erro (6)              |
| C3  | Interface exibe avaliações legíveis e organizadas     | Sim (7)                            | Avaliações truncadas ou ilegíveis (8)                     | Avaliações misturadas com outros conteúdos (9)     |

### Tabela de Casos de Teste – AC34

| Caso | Classes de Equivalência | Entrada                                                                                     | Resultado Esperado |
|------|--------------------------|---------------------------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Perfil do produtor com aba de avaliações, carregamento e exibição normais                   | Avaliações visíveis de forma organizada |
| CT2  | 2, 4, 7                 | Aba de avaliações ausente, mas avaliações existem e carregam corretamente                   | Produtor não consegue acessá-las |
| CT3  | 3, 4, 7                 | Aba presente, mas aparece em local inesperado da interface                                  | Navegação confusa para o produtor |
| CT4  | 1, 5, 7                 | Aba disponível, mas avaliações não carregam                                                 | Falha na visualização de feedbacks |
| CT5  | 1, 6, 7                 | Aba acessível, mas apenas parte das avaliações é carregada                                  | Experiência parcial de leitura |
| CT6  | 1, 4, 8                 | Avaliações aparecem truncadas ou ilegíveis, embora carreguem normalmente                    | Usuário não compreende os comentários |
| CT7  | 1, 4, 9                 | Avaliações carregam, mas aparecem junto com outros dados como pedidos ou produtos           | Exibição confusa, falta de separação visual |
---
| Código |   Descrição                                                               |
|--------|---------------------------------------------------------------------------|
| AC35   | Cada avaliação deve ter nota (1 a 5) e comentário.                        |
| AC36   | Só consumidores que concluíram um pedido podem avaliar.                  |
| RN30   | Um consumidor só pode avaliar uma compra uma vez.                        |

### Tabela de Classes de Equivalência – Avaliações

| ID  | Condição de Entrada                              | Classe Válida              | Classe Inválida 1                                | Classe Inválida 2                              |
|-----|---------------------------------------------------|-----------------------------|--------------------------------------------------|------------------------------------------------|
| C1  | Avaliação contém nota entre 1 e 5                | Nota válida (1)             | Nota fora da faixa permitida (2)                | Nota ausente (3)                               |
| C2  | Comentário textual presente e adequado           | Comentário válido (4)       | Comentário ausente (5)                          | Comentário ofensivo ou inválido (6)            |
| C3  | Consumidor concluiu o pedido avaliado            | Pedido concluído (7)        | Pedido em andamento ou cancelado (8)            | Pedido inexistente (9)                         |
| C4  | Pedido ainda não foi avaliado pelo consumidor    | Avaliação única (10)        | Segunda tentativa de avaliação (11)             | Avaliações simultâneas para o mesmo pedido (12) |

---

### Tabela de Casos de Teste – Avaliações

| Caso | Classes de Equivalência | Entrada                                                                                      | Resultado Esperado                     |
|------|--------------------------|----------------------------------------------------------------------------------------------|----------------------------------------|
| CT1  | 1, 4, 7, 10              | Nota 4 e comentário adequado, pedido concluído, avaliação única                             | Avaliação registrada com sucesso       |
| CT2  | 2, 4, 7, 10              | Nota 6 e comentário adequado, pedido finalizado                                              | Avaliação rejeitada por nota inválida  |
| CT3  | 3, 4, 7, 10              | Nota ausente e comentário presente                                                           | Avaliação rejeitada                    |
| CT4  | 1, 5, 7, 10              | Nota válida, mas comentário ausente                                                          | Avaliação rejeitada                    |
| CT5  | 1, 6, 7, 10              | Comentário ofensivo ou inválido                                                              | Avaliação rejeitada                    |
| CT6  | 1, 4, 8, 10              | Pedido cancelado, mas tentativa de avaliação                                                 | Avaliação bloqueada                    |
| CT7  | 1, 4, 9, 10              | Tentativa de avaliação para pedido inexistente                                               | Avaliação não permitida                |
| CT8  | 1, 4, 7, 11              | Tentativa de avaliar pedido que já foi avaliado anteriormente                                | Nova avaliação rejeitada               |
| CT9  | 1, 4, 7, 12              | Duas avaliações simultâneas sendo submetidas                                                 | Apenas uma registrada com sucesso      |


---
## RN31-	Avaliações ofensivas podem ser denunciadas.
### Tabela de Classes de Equivalência – RN31

| ID  | Condição de Entrada                                | Classe Válida                   | Classe Inválida 1                                   | Classe Inválida 2                               |
|-----|-----------------------------------------------------|----------------------------------|------------------------------------------------------|--------------------------------------------------|
| C1  | Avaliação ofensiva identificável pelo consumidor   | Sim (1)                          | Linguagem ofensiva sutil ou implícita (2)            | Avaliação claramente ofensiva, mas não reconhecida (3) |
| C2  | Sistema permite denunciar avaliações               | Sim (4)                          | Opção de denúncia ausente (5)                        | Botão de denúncia inoperante (6)                 |
| C3  | Denúncia registrada e processada corretamente       | Sim (7)                          | Denúncia registrada, mas sem retorno (8)             | Denúncia não é registrada ou é perdida (9)       |


### Tabela de Casos de Teste – RN31

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Avaliação com linguagem ofensiva clara, botão de denúncia funcional, denúncia registrada | Denúncia efetuada com sucesso |
| CT2  | 2, 4, 7                 | Linguagem ofensiva sutil, botão de denúncia funcional, denúncia registrada | Denúncia em análise |
| CT3  | 3, 4, 7                 | Avaliação claramente ofensiva, botão de denúncia funcional, sistema não reconhece denúncia | Falha na detecção da denúncia |
| CT4  | 1, 5, 7                 | Avaliação ofensiva, mas sem botão de denúncia                             | Consumidor não consegue denunciar |
| CT5  | 1, 6, 7                 | Botão de denúncia está presente, mas não responde                         | Ação de denúncia falha |
| CT6  | 1, 4, 8                 | Denúncia é registrada, mas sistema não processa ou responde               | Denúncia sem retorno |
| CT7  | 1, 4, 9                 | Botão de denúncia funcional, mas sistema não registra a denúncia         | Avaliação permanece sem registro da denúncia |
---
## RN32-	As avaliações influenciam a visibilidade dos produtos.
### Tabela de Classes de Equivalência – RN32

| ID  | Condição de Entrada                                           | Classe Válida                      | Classe Inválida 1                                       | Classe Inválida 2                             |
|-----|----------------------------------------------------------------|-------------------------------------|----------------------------------------------------------|------------------------------------------------|
| C1  | Produto possui avaliações registradas                         | Sim (1)                             | Produto sem avaliações (2)                               | Produto com avaliações excluídas (3)          |
| C2  | Sistema calcula média de avaliações corretamente              | Sim (4)                             | Cálculo da média incorreto (5)                           | Média desconsidera avaliações recentes (6)    |
| C3  | Visibilidade do produto varia conforme a avaliação            | Sim (7)                             | Produto sempre visível, independentemente da avaliação (8) | Avaliações afetam visibilidade de forma inconsistente (9) |

### Tabela de Casos de Teste – RN32

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Produto com várias avaliações positivas e sistema calcula média corretamente | Produto ganha destaque na plataforma |
| CT2  | 2, 4, 7                 | Produto sem avaliações, sistema considera média nula                    | Visibilidade reduzida ou neutra |
| CT3  | 3, 4, 7                 | Produto com avaliações excluídas, média não é considerada               | Produto não ranqueado corretamente |
| CT4  | 1, 5, 7                 | Média de avaliação mal calculada, produto bem avaliado recebe nota baixa | Visibilidade incorreta |
| CT5  | 1, 6, 7                 | Sistema ignora avaliações recentes nas médias                           | Visibilidade não reflete desempenho atual |
| CT6  | 1, 4, 8                 | Produto mal avaliado continua em destaque                               | Requisito de visibilidade não aplicado |
| CT7  | 1, 4, 9                 | Alterações na visibilidade não seguem padrão com base na média          | Inconsistência no ranqueamento de produtos |
---


