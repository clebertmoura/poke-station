# FROM eclipse-temurin:17-jdk-alpine
# VOLUME /tmp
# COPY target/*.jar app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]



# Use the official Maven image as the base image
FROM maven:3.8-openjdk-17 AS builder
# Set the working directory in the container
WORKDIR /usr/src/app
# Copy the pom.xml file to the container
COPY pom.xml .
# Download the project dependencies
RUN mvn dependency:go-offline
# Copy the rest of the application code
COPY src src
# Build the application
RUN mvn package
# Create a new lightweight image with only the JAR file
FROM eclipse-temurin:17-jdk-alpine
# Set the working directory
WORKDIR /usr/src/app
# Copy the JAR file from the builder stage
ARG DEPENDENCY=build
COPY --from=builder /usr/src/app/target/pokestation-*.jar app.jar