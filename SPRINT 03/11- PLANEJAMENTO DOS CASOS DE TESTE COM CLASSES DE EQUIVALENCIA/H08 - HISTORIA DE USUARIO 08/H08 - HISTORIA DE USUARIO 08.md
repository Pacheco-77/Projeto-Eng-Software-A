# Como consumidor, eu gostaria de poder comprar produtos certificados como orgânicos (conforme legislação brasileira), para garantir uma alimentação saudável e livre de agrotóxicos.  
## AC28- O aplicativo deve ter um selo ou ícone para indicar que o produto é orgânico.    
###  Tabela de Classes de Equivalência

| ID  | Condição de Entrada                         | Classe Válida | Classe Inválida |
|-----|---------------------------------------------|----------------|------------------|
| C1  | Produto possui certificação orgânica        | Sim            | Não              |
| C2  | Selo de orgânico está visível no aplicativo | Sim            | Não              |
| C3  | Produto pertence à categoria de alimentos   | Sim            | Não              |

---

### Tabela de Casos de Teste

| Caso | Entrada                                               | Resultado Esperado                                             |
|------|--------------------------------------------------------|----------------------------------------------------------------|
| CT1  | Produto com certificação orgânica, categoria correta   | Selo de “Orgânico” visível                                     |
| CT2  | Produto sem certificação, mas na categoria correta     | Nenhum selo exibido                                            |
| CT3  | Produto certificado mas de categoria inválida          | Selo de “Orgânico” visível (ou conforme regra de negócio)      |
| CT4  | Produto não certificado e fora da categoria            | Nenhum selo exibido                                            |
| CT5  | Produto certificado, mas selo com falha de visibilidade | Erro ou alerta sobre a falta de visibilidade                   |
