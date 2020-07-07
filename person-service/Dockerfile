FROM maven

COPY . /person-service

WORKDIR /person-service

RUN mvn clean package && ls target

cmd ["java", "-jar", "target/person-service-1.0.0.jar"]

EXPOSE 80

