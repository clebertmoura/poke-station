# poke-station
This project is a challenge implementation for a Pokemon Trainer Index, demonstrating its architecture solution proposal and tech stack.

# Solution Architecture Diagram

This diagram represents the architecture of the solution. Including main components, interactions between modules, and integrations with external systems.

![Solution Architecture Diagram](./docs/architecture-diagram.png "Solution Architecture Diagram")

# Solution Architecture Description

This section describes the main components of the solution architecture and their interactions.

## Load Balancer (Reverse Proxy)

> NGINX 

NGINX acts as an efficient web server, reverse proxy, and load balancer, providing a robust solution for optimizing network traffic in web environments. In the role of a reverse proxy, NGINX directs client requests to application servers, hiding the complexity of the underlying infrastructure. This approach increases security and improves performance by enabling horizontal scalability without directly exposing application servers. Additionally, as a load balancer, NGINX distributes requests among application servers in a balanced manner, promoting efficiency and high availability. Its lightweight design, modularity, and ability to handle thousands of simultaneous connections make NGINX a popular choice for improving the reliability and efficiency of web applications.

> Services

| Context      | Description                                 |
| --------------------------- | ------------------------------------------- |
| auth.pokestation.com        | Redirects to Keycloak server                |
| app.pokestation.com         | Root context redirects to the frontend app  |
| app.pokestation.com/backend | Redirects to the backend spring boot app    |
| app.pokestation.com/splunk  | Redirects to Splunk server                  |


## Frontend

> Angular App

This component represents the user interface, where the index of trainers and their pokemons is presented.
Using Angular on the frontend offers a robust and efficient framework for developing modern web applications. As a JavaScript framework maintained by Google, Angular offers a modular, componentized architecture that makes it easier to organize and maintain source code. Additionally, Angular offers a powerful library of ready-to-use components, supports dependency injection, and makes it easy to manipulate application state. Its declarative approach to building user interfaces, along with features like routing and form management, makes Angular a robust choice for agile, scalable, and sustainable frontend application development.

> Material Design Components

The choice of Material Design is justified by its cohesive and visually attractive approach, providing a consistent and intuitive user experience across multiple platforms. Furthermore, the wide availability of pre-developed components facilitates the efficient and elegant implementation of interfaces, contributing to the design effectiveness and visual standardization of the application.

## Backend (Spring Boot App)

The backend component is built on the Spring Boot framework, and uses the libraries listed below, specially selected with the aim of promoting a robust, safe, efficient and scalable solution, maintaining the flexibility necessary for system evolution.

> Spring Data 

Its use simplifies data access and manipulation operations in the relational database, ensuring efficiency and productivity in development.

> Spring GraphQL

Provides a flexible, type-oriented query layer, enabling clients to request specific data efficiently, reducing transmitted data overhead.

> Spring Security

Ensures the protection of resources, implementing authentication and authorization in a scalable and configurable way. In addition to being easily integrated with the Identity Management System (Keycloak).

> Logging (SLF4J)

Provides a logging abstraction that is compatible with multiple implementations, providing flexibility in configuring and managing logs, essential for monitoring and troubleshooting in production environments. 

## IAM (Keycloak)

Adopting Keycloak as an Identity and Access Management (IAM) brings significant benefits to the proposed architecture. Providing a complete and scalable solution to manage identities, authentication and authorization, simplifying the complexity associated with the security of a distributed application. Reducing the development burden and ensuring a consistent approach to security across the entire application. Furthermore, compatibility with modern standards, such as JWT, OAuth 2.0 and OpenID Connect, facilitates integration with other external systems and services, promoting a more flexible and interoperable architecture.

## Logs & Monitoring

Choosing Splunk as a tool for Monitoring and Auditing logs offers substantial benefits for the proposed architecture. Splunk is known as a leading operational intelligence platform that offers advanced solutions for log data management and analysis, as well as providing valuable insights for real-time monitoring, security, auditing, and data analysis. Its flexibility, scalability, and advanced features make it a popular choice across industries for log analysis, security monitoring, regulatory compliance, and more.

## Data Layer (Postgres Database)

Represents the Relational Database where the system persists the data.

## Integration (PokéAPI)

Represents the external API Services used to enrich the data information for Pokemons.

# Database Model

```db/pokedb.sql```:
```sql
CREATE TABLE trainer (
    id bigint NOT NULL PRIMARY KEY,
    email character varying(255),
    instagram_link character varying(255),
    name character varying(255)
);

CREATE TABLE pokemon (
    id bigint NOT NULL PRIMARY KEY,
    name character varying(255),
    trainer_id bigint,
    FOREIGN KEY (trainer_id) REFERENCES trainer(id)
);
```

# Source Code

This section describes how the project structure, folders and files are organized.

| Folder           | Description                                 |
| ---------------- | ------------------------------------------- |
| /                | Root context redirects to the frontend app  |
| /.env            | Configure Env variables for containers      |
| /docs            | Documentations                              |
| /conf            | Some configurations used by containers      |
| /db              | Initial schema                              |
| /backend         | Backend implemented with spring boot        |
| /frontend        | Frontend implemented with Angular           |


# Environment requirements

1. Docker 24.x with docker-compose
2. Node v20.9.x
3. AngularCLI 17.x

# Setup the environment

This application is ready to be executed using localhost DNS or the specific DNSs below:

- app.pokestation.com
- auth.pokestation.com

To use the specific DNSs, before running the docker-compose, we need to configure the following DNSs in your `/etc/hosts` file, to be able to access the application using these DNSs:

```
127.0.0.1       app.pokestation.com
127.0.0.1       auth.pokestation.com
```

# Runningthe Solution

1. To start the solution execute the following command:

> docker-compose up -d --build

* The --build is required in the first time, or when something is modified in the project.

2. After all containers has started, open the browser with the URL: http://localhost and use one of the users below.

# Testing users

| login  | password |
| ------ | -------- |
| admin  | admin    |
| user   | user     |
