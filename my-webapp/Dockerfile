FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./build/libs/my-webapp-*.jar my-webapp.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "my-webapp.jar"]
