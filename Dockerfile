# Use a lightweight OpenJDK 17 image
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Copy the built jar into the container
COPY target/java-devops-app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
