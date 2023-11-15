FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app
COPY . /app
WORKDIR /app/covid-api


RUN ./gradlew build -x test
CMD ["java", "-jar", "build/libs/covid-api-0.0.1-SNAPSHOT.jar"]
