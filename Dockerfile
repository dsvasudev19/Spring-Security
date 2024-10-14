FROM maven AS build 

COPY . .

RUN mvn clean package -DskipTests

FROM openjdk:17-oracle

COPY --from=build ./target/spring-security.jar spring-security.jar

CMD ["java","-jar","spring-security.jar"]
