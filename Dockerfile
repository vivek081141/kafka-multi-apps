FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/producer-0.0.1-SNAPSHOT.jar producer-0.0.1-SNAPSHOT.jar
EXPOSE 18082
ENTRYPOINT ["java","-jar","producer-0.0.1-SNAPSHOT.jar"]

#docker build -t my-image:latest .