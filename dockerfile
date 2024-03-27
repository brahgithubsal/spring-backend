# Use openjdk:21 as base image
FROM openjdk:21

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot executable JAR file into the container
COPY target/employeemanager2-0.0.1-SNAPSHOT.jar ./app.jar

# Expose the port that the Spring Boot application uses
EXPOSE 8080

# Define environment variables for the MySQL connection
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql:3306/employeemanager?allowPublicKeyRetrieval=true&serverTimezone=UTC
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=Aziz2022@
ENV SPRING_DATASOURCE_DRIVER_CLASS_NAME=com.mysql.cj.jdbc.Driver

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
