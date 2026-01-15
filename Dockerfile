FROM openjdk:17-slim

WORKDIR /app

# Copy only necessary files first (better Docker layer caching)
COPY pom.xml .
COPY src src
COPY mvnw .
COPY .mvn .mvn

# Build dependencies first
RUN chmod +x mvnw
RUN ./mvnw dependency:resolve

# Copy rest of the code and build
COPY . .
RUN ./mvnw clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/moneymanager2-0.0.1-SNAPSHOT.jar"]
