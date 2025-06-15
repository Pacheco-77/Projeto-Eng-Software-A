                                   
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

                        +------------------+        +------------------+
                        | Deploy Front-End |        |  Deploy Back-End |
                        |      Vercel      |        |      Railway     |
                        +------------------+        +------------------+
