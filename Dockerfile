# Build Stage
FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

# Run Stage
FROM eclipse-temurin:21-jre

WORKDIR /app

COPY --from=build /app/target/travelease-0.0.1-SNAPSHOT.jar travelease.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","travelease.jar"]