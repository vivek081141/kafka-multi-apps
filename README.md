# Kafka Multi-Module Application

This repository contains a multi-module Maven project for a Kafka-based application, consisting of a Kafka producer and a Kafka consumer. The project is designed to be easily deployable using Docker and Docker Compose, with continuous integration and deployment set up using GitHub Actions.

## Project Structure

- **kafka-consumer**: The module for the Kafka consumer application.
- **kafka-producer**: The module for the Kafka producer application.
- **docker-compose.yml**: Docker Compose file to set up the Kafka environment along with the producer and consumer applications.
- **.github/workflows/docker-image.yml**: GitHub Actions workflow file for building and publishing Docker images.

## Prerequisites

- Docker
- Docker Compose
- Maven
- Java 17

## Getting Started

### Building the Project

To build the project, run the following command from the root directory:

```bash
mvn clean package
```

### Running the Application
Ensure Docker and Docker Compose are installed on your machine. Use the following command to start all services defined in the docker-compose.yml file:
```bash
docker-compose up
```

To stop the services, run:

```bash
docker-compose down
``` 

## Accessing the Applications

**1. Producer Application**: To publish a message to the Kafka topic, 
use the producer application, accessible at http://localhost:18082.

```bash
curl --location 'http://localhost:18082/send?message=HelloWorld'
``` 

**2. Consumer Application**: The consumer is available at port 18081 and will log the received messages to the console.

```bash
docker logs kafka-consumer
```

**3. Kafka Broker**: The Kafka broker is accessible at localhost:9092.

**4. Kafka Zookeeper**: The Zookeeper is accessible at localhost:2181.

**5. Kafka Schema Registry**: The schema registry is accessible at http://localhost:8081.

**6. Kafka UI**: The Kafka UI is accessible at http://localhost:8090/.