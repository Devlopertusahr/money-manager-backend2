FROM amazoncorretto:21-alpine

WORKDIR /app

# Copy necessary files
COPY pom.xml .
COPY src src
COPY mvnw .
COPY .mvn .mvn

# Build dependencies
RUN chmod +x mvnw
RUN ./mvnw dependency:resolve

# Copy rest and build
COPY . .
RUN ./mvnw clean package -DskipTests

# Run the application
CMD ["java", "-jar", "target/moneymanager2-0.0.1-SNAPSHOT.jar"]
