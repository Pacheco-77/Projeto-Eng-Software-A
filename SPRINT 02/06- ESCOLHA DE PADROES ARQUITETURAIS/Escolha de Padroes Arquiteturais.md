
#6. Arquitetura do Sistema

## 6.1 Arquitetura em Camadas (Layered Architecture)

**Justificativa:**  
O sistema possui separação entre:
- Interface do usuário (**Flutter**)
- Lógica de negócio (**Node.js/Express**)
- Acesso e persistência de dados (**PostgreSQL**) 

## 6.2 Modelo MVC (Model-View-Controller) no Back-End

**Justificativa:**  
Utilizado no desenvolvimento da API com **Express.js**.  
Ajuda a organizar o código em três responsabilidades:
- **Modelos:** Regras de dados e validações.
- **Controladores:** Lógica da aplicação e rotas.
- **Visões:** Retornos em JSON, no caso de API REST.

## 6.3 Arquitetura Client-Server

**Justificativa:**  
O app mobile (**cliente**) consome serviços da API (**servidor**).  
A comunicação ocorre via **HTTP/HTTPS** com troca de dados em formato **JSON**.

## 6.4 Publisher/Subscriber (Pub/Sub) com Firebase Cloud Messaging

**Justificativa:**  
O sistema precisa de **notificações em tempo real** (ex: novos produtos, status de pedidos, mensagens).  
**Firebase Cloud Messaging (FCM)** permite envio de mensagens assíncronas entre produtor e consumidor.

