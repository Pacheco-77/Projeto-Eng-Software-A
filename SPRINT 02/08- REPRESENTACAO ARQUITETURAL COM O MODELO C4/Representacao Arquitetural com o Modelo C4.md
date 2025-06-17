# 8. Representação Arquitetura com o Modelo C4
## 8.1 Diagrama de Contexto
O Diagrama de Contexto apresenta uma visão geral do sistema Organo Life, destacando os principais atores externos e os fluxos de interação com o sistema.

![1 drawio (3)](https://github.com/user-attachments/assets/2b53e6ef-3af5-4d5c-82d1-4b167c77996d)
---
## 8.2 Diagrama de Conteiners
O Diagrama de Contêineres detalha a arquitetura de alto nível do sistema, separando as responsabilidades entre os diferentes contêineres:
API Frontend (Flutter): Interface usada por todos os perfis de usuários (consumidores, produtores, nutricionistas, agrônomos). Realiza chamadas HTTP/REST à API Backend.
API Backend (Node.js + Express.js): Responsável pela lógica de negócio e pela comunicação com os serviços externos e banco de dados.

![2 drawio (2)](https://github.com/user-attachments/assets/4ee3046f-b5e3-4ade-931b-369905bfc0fc)
---
## 8.3 Diagrama de Componentes
O Diagrama de Componentes apresenta a decomposição interna da API Backend em diversos módulos especializados, cada um responsável por uma funcionalidade do sistema

![3 drawio (1)](https://github.com/user-attachments/assets/b9e2662c-8448-49e0-a9e9-00145e43803d)
---
## 8.4 Diagrma de Código
O Diagrama de Código ilustra como as classes, funções e módulos estão organizados na aplicação, mostrando suas interações e detalhes de implementação.Esse diagrama é importante para que desenvolvedores entendam a estrutura técnica do sistema.
