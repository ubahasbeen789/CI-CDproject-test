FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./build/libs/my-backend-*.jar my-backend.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "my-backend.jar"]
