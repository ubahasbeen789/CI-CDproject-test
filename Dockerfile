FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY ./my-webapp/build/libs/my-webapp-*.jar /app/my-webapp.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "my-webapp.jar"]
