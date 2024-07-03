FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/kafka-consumer-1.0.0-SNAPSHOT.jar kafka-consumer-1.0.0-SNAPSHOT.jar
EXPOSE 18081
ENTRYPOINT ["java","-jar","kafka-consumer-1.0.0-SNAPSHOT.jar"]

#docker build -t my-image:latest .