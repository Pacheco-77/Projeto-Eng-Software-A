                                   
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
                                     ▲            |         ▲
                                     |            |         |
            +-------------------+    |            |         |   +-------------------------+
            |   Autenticação    |<--+             |         +-->|     Banco de Dados      |
            |   Firebase Auth   |                 |             |      PostgreSQL         |
            +-------------------+                 |             +-------------------------+
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

                       
                        


## 📱 Plataforma

| **Item**           | **Descrição**         |
|--------------------|------------------------|
| Plataforma-alvo    | Android                |
| Tipo de app        | Aplicativo mobile      |

---

## 🧩 Tech Stack

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
