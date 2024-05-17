FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./my-backend/build/libs/my-backend-*.jar /app/my-backend.jar
COPY ./my-webapp/build/libs/my-webapp-*.jar /app/my-webapp.jar
EXPOSE 8080 8081
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
