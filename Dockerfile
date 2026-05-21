FROM eclipse-temurin:17-jdk-jammy

WORKDIR /Vardhan

COPY target/*.jar app.jar

CMD ["java", "-jar", "app.jar"]
