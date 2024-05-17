FROM openjdk:17-jdk-slim
EXPOSE 8080 8081
COPY ./my-backend/build/libs/my-backend-*.jar /app/my-backend.jar
COPY ./my-webapp/build/libs/my-webapp-*.jar /app/my-webapp.jar
COPY entrypoint.sh /app/entrypoint.sh
WORKDIR /app
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
