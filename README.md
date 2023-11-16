# poke-station
This project is an challenge implementation for a Pokemon Trainer Index.

# Solution Architecture Diagram

This diagram represents the architecture of the solution. Including main components, interactions between modules, and integrations with external systems.

![Solution Architecture Diagram](./docs/architecture-diagram.png "Solution Architecture Diagram")

# Solution Architecture Description

This section describes the main components of the solution architecture and their interactions.

## Load Balancer (Reverse Proxy)

> NGINX 

NGINX acts as an efficient web server, reverse proxy, and load balancer, providing a robust solution for optimizing network traffic in web environments. In the role of a reverse proxy, NGINX directs client requests to application servers, hiding the complexity of the underlying infrastructure. This approach increases security and improves performance by enabling horizontal scalability without directly exposing application servers. Additionally, as a load balancer, NGINX distributes requests among application servers in a balanced manner, promoting efficiency and high availability. Its lightweight design, modularity, and ability to handle thousands of simultaneous connections make NGINX a popular choice for improving the reliability and efficiency of web applications.

## Frontend

> Angular App

Este componente representa a interface do usuário, onde é apresentado o índice de treinatores e seus pokemons. 
A utilização do Angular no frontend oferece uma estrutura robusta e eficiente para o desenvolvimento de aplicações web modernas. Como um framework JavaScript mantido pelo Google, o Angular oferece uma arquitetura modular e componentizada que facilita a organização e manutenção do código-fonte. Além disso, Angular oferece uma poderosa biblioteca de componentes prontos para uso, suporte a injeção de dependências, e facilita a manipulação do estado da aplicação. Sua abordagem declarativa para construção de interfaces de usuário, juntamente com recursos como roteamento e gerenciamento de formulários, torna Angular uma escolha robusta para o desenvolvimento ágil, escalável e sustentável de aplicações frontend.


