# H9- Como produtor rural, quero ver os comentários e avaliações dos consumidores, para saber se eles ficaram satisfeitos e melhorar minha oferta.
# Critérios de Aceitação
## AC34-	O produtor pode visualizar avaliações em uma aba separada do perfil.
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
## AC35-	Cada avaliação deve ter nota (1 a 5) e comentário.
### Tabela de Classes de Equivalência – AC35

| ID  | Condição de Entrada                              | Classe Válida           | Classe Inválida 1                                  | Classe Inválida 2                          |
|-----|---------------------------------------------------|--------------------------|-----------------------------------------------------|--------------------------------------------|
| C1  | Avaliação possui nota entre 1 e 5                | Sim (1)                  | Nota fora da faixa (ex: 0 ou 6) (2)                 | Nota ausente (3)                           |
| C2  | Avaliação contém comentário textual              | Sim (4)                  | Comentário ausente (5)                              | Comentário com conteúdo inválido/inapropriado (6) |
| C3  | Interface exibe corretamente nota e comentário   | Sim (7)                  | Apenas nota visível (8)                             | Elementos aparecem truncados ou desformatados (9) |

### Tabela de Casos de Teste – AC35

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Avaliação com nota 4 e comentário claro, ambos exibidos corretamente    | Avaliação válida exibida com sucesso |
| CT2  | 2, 4, 7                 | Avaliação com nota 0 e comentário válido                                | Rejeição da nota inválida |
| CT3  | 3, 4, 7                 | Avaliação sem nota, apenas comentário presente                          | Avaliação incompleta não registrada |
| CT4  | 1, 5, 7                 | Avaliação com nota, mas sem comentário                                  | Avaliação incompleta não registrada |
| CT5  | 1, 6, 7                 | Comentário com conteúdo ofensivo/inadequado e nota válida               | Rejeição por violar política de conteúdo |
| CT6  | 1, 4, 8                 | Comentário exibido corretamente, mas nota não visível                   | Falha parcial na exibição |
| CT7  | 1, 4, 9                 | Nota e comentário presentes, mas texto cortado ou layout incorreto      | Interface compromete experiência do usuário |
---
## AC36-	Só consumidores que concluíram um pedido podem avaliar.
### Tabela de Classes de Equivalência – AC36

| ID  | Condição de Entrada                                       | Classe Válida                    | Classe Inválida 1                               | Classe Inválida 2                           |
|-----|------------------------------------------------------------|----------------------------------|--------------------------------------------------|---------------------------------------------|
| C1  | Consumidor possui pedido concluído                        | Sim (1)                          | Pedido cancelado (2)                            | Pedido em andamento ou pendente (3)         |
| C2  | Sistema verifica status do pedido antes de liberar avaliação | Sim (4)                          | Sistema não faz verificação (5)                 | Verificação incorreta ou bypassável (6)     |
| C3  | Interface de avaliação disponível apenas para elegíveis   | Sim (7)                          | Interface aparece para usuários inelegíveis (8) | Interface não aparece mesmo sendo elegível (9) |

### Tabela de Casos de Teste – AC36

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Consumidor concluiu pedido, sistema verifica corretamente, avaliação disponível | Avaliação liberada com sucesso |
| CT2  | 2, 4, 7                 | Pedido foi cancelado, verificação correta, avaliação não aparece       | Avaliação bloqueada |
| CT3  | 3, 4, 7                 | Pedido ainda em andamento, verificação feita, sem acesso à avaliação   | Avaliação não permitida |
| CT4  | 1, 5, 7                 | Consumidor elegível, mas sistema não faz verificação                   | Potencial vulnerabilidade no controle de acesso |
| CT5  | 1, 6, 7                 | Verificação aplicada incorretamente, avaliação liberada para não elegível | Falha de segurança no processo |
| CT6  | 1, 4, 8                 | Sistema verifica corretamente, mas avaliação aparece para usuário inelegível | Exposição indevida da funcionalidade |
| CT7  | 1, 4, 9                 | Consumidor concluiu pedido, sistema verifica, mas interface de avaliação não aparece | Usuário é impedido de avaliar indevidamente |  
---
# Regras de Negócio
## RN30-	Um consumidor só pode avaliar uma compra uma vez.
### Tabela de Classes de Equivalência – RN30

| ID  | Condição de Entrada                                | Classe Válida               | Classe Inválida 1                             | Classe Inválida 2                                  |
|-----|-----------------------------------------------------|------------------------------|------------------------------------------------|----------------------------------------------------|
| C1  | Consumidor ainda não avaliou o pedido              | Sim (1)                      | Consumidor já avaliou este pedido (2)         | Tentativa de múltiplas avaliações simultâneas (3)  |
| C2  | Sistema impede submissão repetida da mesma avaliação | Sim (4)                      | Restrição não é aplicada (5)                  | Restrição falha sob determinadas condições (6)     |
| C3  | Interface bloqueia acesso à avaliação após envio   | Sim (7)                      | Avaliação pode ser reeditada ou reenviada (8) | Botão de avaliação continua disponível (9)         |

### Tabela de Casos de Teste – RN30

| Caso | Classes de Equivalência | Entrada                                                                 | Resultado Esperado |
|------|--------------------------|-------------------------------------------------------------------------|--------------------|
| CT1  | 1, 4, 7                 | Consumidor nunca avaliou o pedido, sistema permite avaliação única      | Avaliação submetida com sucesso |
| CT2  | 2, 4, 7                 | Consumidor já avaliou o pedido, sistema impede nova avaliação           | Nova avaliação bloqueada |
| CT3  | 3, 4, 7                 | Tentativa de enviar avaliações simultâneas pelo mesmo consumidor        | Apenas uma avaliação registrada |
| CT4  | 1, 5, 7                 | Consumidor elegível, mas sistema falha em aplicar restrição             | Duas ou mais avaliações registradas indevidamente |
| CT5  | 1, 6, 7                 | Sistema aplica restrição, mas ela falha em cenários específicos         | Avaliação duplicada ou comportamento inconsistente |
| CT6  | 1, 4, 8                 | Avaliação enviada, mas usuário consegue reenviar ou editar              | Violação da regra de avaliação única |
| CT7  | 1, 4, 9                 | Avaliação enviada, botão de envio continua disponível                   | Interface permite envio indevido |
---

