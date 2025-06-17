# 7. Tecnologias e Ferramentas Utilizadas (Tech Stack MAP)
## 7.1 Mapa de Tecnologia
O sistema foi criado com base em uma arquitetura atual e escalável, formada por várias tecnologias que se integram de maneira eficiente. O objetivo foi assegurar uma excelente performance, segurança, usabilidade e simplicidade na manutenção.
                                   
                                       +---------------------+
                                       |    Usuário Final    |
                                       +---------------------+
                                                  |
                                                  ▼
                                         +------------------+
                                         |   Front-End App  |
                                         |     Flutter       |
                                         +------------------+
                                                  |
                                                  ▼
                                    +------------------------+
                                    |      Back-End API      |
                                    | Node.js + Express.js   |
                                    +------------------------+
                                     ▲           |         ▲
                                     |           |         |
            +-------------------+    |           |         |   +-------------------------+
            |   Autenticação    |<--+            |         +-->|     Banco de Dados      |
            |   Firebase Auth   |                |             |      PostgreSQL         |
            +-------------------+                |             +-------------------------+
                                                 |
                                                 ▼
                                   +--------------------------+
                                   | Armazenamento de Imagens |
                                   |     Firebase Storage      |
                                   +--------------------------+
                                                  |
                                                  ▼
                                      +----------------------+
                                      |  Serviço de Pagamento |
                                      |   Mercado Pago API    |
                                      +----------------------+
                                                  |
                                                  ▼
                                  +-----------------------------+
                                  | Notificações e Mensagens    |
                                  | Firebase Cloud Messaging    |
                                  +-----------------------------+

                                        +------------------+
                                        |  Deploy Back-End |
                                        |      Railway     |
                                        +------------------+

                       
                        


## 7.2 Plataforma
A plataforma define os requisitos básicos de execução e o ambiente em que o aplicativo será disponibilizado ao usuário final. Com base nos objetivos do projeto e no público-alvo, optou-se pelas seguintes definições:

| **Item**           | **Descrição**         |
|--------------------|------------------------|
| Plataforma-alvo    | Android                |
| Tipo de app        | Aplicativo mobile      |

Optamos pela plataforma Android devido à sua ampla popularidade no Brasil, ampliando nosso alcance entre os usuários.
Optamos pela aplicação mobile que oferece acesso fácil, rápido e intuitivo aos recursos do sistema pelo smartphone.

---

## 7.3 Tech Stack

| **Camada / Propósito**       | **Tecnologia / Serviço**     | **Descrição**                                                                 |
|------------------------------|-------------------------------|-------------------------------------------------------------------------------|
| Front-End (Mobile)           | Flutter                       | Framework para desenvolvimento de apps Android multiplataforma.              |
| Back-End                     | Node.js + Express.js          | Servidor responsável pela lógica da aplicação e APIs RESTful.                |
| Banco de Dados               | PostgreSQL                    | Banco relacional para armazenamento estruturado das informações.             |
| Autenticação                 | Firebase Authentication       | Autenticação de usuários (e-mail, redes sociais, etc.).                      |
| Mensagens / Notificações     | Firebase Cloud Messaging      | Envio de mensagens e notificações push para usuários.                        |
| Pagamentos                   | Mercado Pago API              | Integração de pagamentos online entre consumidores e produtores.             |
| Armazenamento de Imagens     | Firebase Storage              | Armazenamento de fotos de produtos, perfis de usuários, etc.                 |
| Deploy (Back-End API)        | Railway                       | Plataforma para hospedar e gerenciar a API do servidor.                      |
