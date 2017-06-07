# Install base image
FROM java:8

# Install Maven
RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code

ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]

ADD src /code/src
RUN ["mvn", "package"]

EXPOSE 8081
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "target/spring-boot-docker-0.1.jar"]


