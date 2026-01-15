FROM amazoncorretto:21
WORKDIR /app
COPY . .
RUN chmod 755 mvnw && ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/moneymanager2-0.0.1-SNAPSHOT.jar"]
