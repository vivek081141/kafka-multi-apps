Step 1: Create a Docker Compose File

Step 2: Run Docker Compose
docker-compose up -d

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
