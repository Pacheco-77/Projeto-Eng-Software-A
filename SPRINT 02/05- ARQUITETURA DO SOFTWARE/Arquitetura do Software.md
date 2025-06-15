## 5- Arquitetura so Software 
Organo Life é um aplicativo Android que conecta consumidores a produtores de alimentos orgânicos. Ele usa uma arquitetura moderna com foco em escalabilidade, modularidade e comunicação assíncrona, respeitando os princípios do modelo C4.

| **Padrão Arquitetural**            | **Aplicação no Sistema**                                                                                                       |
|-----------------------------------|--------------------------------------------------------------------------------------------------------------------------------|
| **Arquitetura em Camadas**         | Separação entre front-end (Flutter), lógica de negócio (Node.js/Express.js) e persistência (PostgreSQL).                       |
| **Modelo MVC (no Back-End)**       | Utilização no Express.js para organizar rotas, controladores, serviços e modelos.                                              |
| **Client-Server**                  | Comunicação entre o app Flutter (cliente) e o back-end Express (servidor), via API REST com JSON.                              |
| **Publisher/Subscriber (Pub/Sub)** | Uso do Firebase Cloud Messaging para envio de mensagens e notificações assíncronas entre usuários (produtores e consumidores). |
