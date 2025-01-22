# E-Commerce_Microservices_SpringBoot Application

[//]: # (![Image1]&#40;path/to/image&#41;)

![Image1](diagrams/img1.png)
![Image2](diagrams/img2.png)
![Image2](diagrams/img3.png)

 # FeignClient : 
    - FeignClient is a declarative HTTP client in Spring Cloud that simplifies communication between microservices.
    - It abstracts the complexities of making REST API calls by providing an easy-to-use interface to define HTTP requests.
 # Eureka Server client
    - In a Spring Boot microservices architecture, the Eureka Server acts as a service registry, and the Eureka Client is any microservice or application that registers itself with the Eureka Server for service discovery. 
    - This allows microservices to dynamically locate and communicate with each other without hardcoding their locations.



# E-Commerce Microservices Application

## Table of Contents
1. [Overview](#overview)
2. [Architecture](#architecture)
3. [Tech Stack](#tech-stack)
4. [Microservices](#microservices)
5. [Setup Instructions](#setup-instructions)
6. [Configuration](#configuration)
7. [Endpoints](#endpoints)
8. [Monitoring and Tracing](#monitoring-and-tracing)
9. [Future Enhancements](#future-enhancements)

---

## Overview
This project is a scalable, distributed e-commerce platform built using microservices architecture. Each microservice is designed to handle a specific domain of the application, such as orders, products, customers, payments, and notifications. The system leverages Spring Boot for backend development and integrates with Eureka for service discovery, Kafka for messaging, and Zipkin for distributed tracing.

---

## Architecture
The application is designed as a set of independent microservices that communicate via REST APIs. Key architectural components include:

- **Gateway Service**: Acts as an entry point to route client requests to the appropriate microservices.
- **Eureka Server**: Manages service discovery.
- **Config Server**: Centralized configuration management.
- **Kafka Message Broker**: Handles asynchronous communication between services.
- **Individual Microservices**: Handle specific functionalities like customers, orders, products, payments, and notifications.
- **Zipkin**: For distributed tracing and monitoring.

---

## Tech Stack
- **Backend**: Spring Boot
- **Service Discovery**: Eureka
- **API Gateway**: Spring Cloud Gateway
- **Configuration Management**: Spring Cloud Config Server
- **Messaging**: Apache Kafka
- **Tracing**: Zipkin
- **Database**: PostgreSQL, MongoDB- Mongo Express 
- **Build Tool**: Maven
- **Monitoring**: Spring Boot Actuator
- **Java Version**: Java 21

---

## Microservices
### 1. **Customer Service**
- Handles customer-related operations.
- **Port**: `8090`
- **Database**: PostgreSQL

### 2. **Order Service**
- Manages order placement and retrieval.
- **Port**: `8070`
- **Database**: PostgreSQL

### 3. **Product Service**
- Manages product catalog.
- **Port**: `8050`
- **Database**: PostgreSQL

### 4. **Payment Service**
- Handles payment processing.
- **Port**: `8060`
- **Database**: PostgreSQL

### 5. **Notification Service**
- Sends notifications for order updates.
- **Port**: `8040`
- **Messaging**: Kafka

### 6. **Gateway Service**
- Routes requests to the appropriate microservices.
- **Port**: `8222`

### 7. **Eureka Server**
- Service discovery and registry.
- **Port**: `8761`

### 8. **Config Server**
- Centralized configuration for all microservices.
- **Port**: `8888`

---

## Setup Instructions
### Prerequisites
- Java 21
- Maven
- Docker & Docker Compose
- MongoDB
- PostgreSQL installed locally or Dockerized

### Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd ecommerce-microservices
   ```

2. Build all microservices:
   ```bash
   mvn clean install
   ```

3. Start the infrastructure (Eureka, Config Server, Kafka, Zipkin):
   ```bash
   docker-compose up -d
   ```

4. Start each microservice:
   ```bash
   cd customer-service
   mvn spring-boot:run
   # Repeat for other services
   ```

5. Access the Gateway Service:
    - URL: `http://localhost:8222`

---

## Configuration
### Application Configuration
- Configurations for each microservice are managed in the **Config Server**.
- Modify the configuration files in the `config-repo` directory.

### Gateway Configuration
- Gateway routes are defined as:
  ```yaml
  spring:
    cloud:
      gateway:
        routes:
          - id: customer-service
            uri: lb:http://CUSTOMER-SERVICE
            predicates:
              - Path=/api/v1/customers/**
          # Add other services here
  ```

### Eureka Configuration
- Eureka client settings for service registration:
  ```yaml
  eureka:
    client:
      service-url:
        defaultZone: http://localhost:8761/eureka
  ```

### Kafka Configuration
- Kafka settings for producer and consumer services:
  ```yaml
  spring:
    kafka:
      bootstrap-servers: localhost:9092
      consumer:
        group-id: ecommerce-group
      producer:
        key-serializer: org.apache.kafka.common.serialization.StringSerializer
        value-serializer: org.apache.kafka.common.serialization.StringSerializer
  ```

---

## Endpoints
### Gateway Routes
| Service            | Path                           |
|--------------------|--------------------------------|
| Customer Service   | `/api/v1/customers/**`        |
| Order Service      | `/api/v1/orders/**`           |
| Product Service    | `/api/v1/products/**`         |
| Payment Service    | `/api/v1/payments/**`         |

### Actuator Endpoints
- Example: `http://localhost:8090/actuator/health`

### Zipkin
- URL: `http://localhost:9411`

---

## Monitoring and Tracing
### Kafka
- Used for asynchronous communication between microservices, particularly for notifications and order confirmations.

### Zipkin
- To trace requests across services, access the Zipkin UI at `http://localhost:9411`.
- Ensure that tracing headers are propagated in each service.

### Eureka
- Eureka dashboard: `http://localhost:8761`

### Actuator
- Each microservice exposes Actuator endpoints for health checks and monitoring.

---

## Future Enhancements
1. Add Kubernetes deployment configurations.
2. Implement advanced security with OAuth2.
3. Add circuit breaker patterns with Resilience4j.
4. Enhance monitoring with Prometheus and Grafana.
5. Integrate Elasticsearch and Kibana for log management.

---

## Contributors
- [Pratik Patel]

