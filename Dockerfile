
FROM openjdk:17-jdk-slim


WORKDIR /app


COPY target/java-maven-build-1.0-SNAPSHOT.jar app.jar


EXPOSE 8080


ENTRYPOINT ["java", "-jar", "app.jar"]
