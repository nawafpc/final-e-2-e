#FROM maven:3.9.8-amazoncorretto-17-al2023 As build
#WORKDIR /app
#COPY pom.xml .
#COPY e-to-e/src .
#RUN mvn clean package -DskipTests

FROM openjdk:22-jdk-slim
WORKDIR /app
COPY e-to-e/target/e2e-community-1.0-SNAPSHOT.war app.war
EXPOSE 9000
ENTRYPOINT ["java", "-jar", "app.war"]