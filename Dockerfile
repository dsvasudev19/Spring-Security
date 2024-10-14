FROM openjdk:17-oracle
COPY . .
RUN mvn clean package
CMD ["java","-jar","spring-security.jar"]
