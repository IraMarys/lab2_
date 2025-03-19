FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN ./mvnw clean package
EXPOSE 10000
CMD ["java", "-cp", "target/classes:target/dependency/*", "HelloWorld"]
