FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/kafka-producer.jar kafka-producer.jar
EXPOSE 18082
ENTRYPOINT ["java","-jar","kafka-producer.jar"]

#docker build -t kafka-producer:latest .
## Docker file is just for the representation cause github action is building the image and pushing it to docker hub