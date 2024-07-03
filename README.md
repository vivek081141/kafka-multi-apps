Step 2: Run Docker Compose
docker-compose up -d


Step 1: Running the application

mvn spring-boot:build-image -Dspring-boot.build-image.imageName=my-image:latest

docker build -t my-image:latest .


docker push vivek081141/producer:0.0.1-SNAPSHOT

or using spotify plugin
mvn clean package docker:build docker:push



Step3: Run the application
docker run -d -p 18082:18082 producer-app


Step 3: Verify Kafka and ZooKeeper are Running
docker-compose ps

Step 4: Interact with Kafka
docker exec -it <kafka_container_id> /bin/bash

Example Kafka Commands
kafka-topics --create --topic test-topic --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1

List topics:
kafka-topics --list --bootstrap-server localhost:9092

Produce messages:
kafka-console-producer --topic test-topic --bootstrap-server localhost:9092


Consume messages:
kafka-console-consumer --topic test-topic --bootstrap-server localhost:9092 --from-beginning


STOP
docker-compose down
