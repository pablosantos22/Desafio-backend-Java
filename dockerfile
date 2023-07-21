FROM eclipse-temurin:17-jdk-alpine

COPY . .

RUN ./mvnw install

COPY target/*.jar test.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "test.jar"]