FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/kafka-consumer.jar kafka-consumer.jar
EXPOSE 18081
ENTRYPOINT ["java","-jar","kafka-consumer.jar"]

#docker build -t kafka-consumer:latest .
## Docker file is just for the representation cause github action is building the image and pushing it to docker hub