FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/kafka-producer-1.0.0-SNAPSHOT.jar kafka-producer-1.0.0-SNAPSHOT.jar
EXPOSE 18082
ENTRYPOINT ["java","-jar","kafka-producer-1.0.0-SNAPSHOT.jar"]

#docker build -t my-image:latest .