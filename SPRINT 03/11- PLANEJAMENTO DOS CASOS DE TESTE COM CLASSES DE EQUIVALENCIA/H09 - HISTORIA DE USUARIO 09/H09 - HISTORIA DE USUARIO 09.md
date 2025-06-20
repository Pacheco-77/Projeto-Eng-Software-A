# H9- Como produtor rural, quero ver os comentários e avaliações dos consumidores, para saber se eles ficaram satisfeitos e melhorar minha oferta.
# Critérios de Aceitação
## AC34	O produtor pode visualizar avaliações em uma aba separada do perfil.
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
