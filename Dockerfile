FROM maven:3.8.1-jdk-11
WORKDIR /app
COPY pom.xml .
RUN mvn clean install -DskipTests
COPY . .
EXPOSE 8080
CMD ["mvn", "spring-boot:run"]
