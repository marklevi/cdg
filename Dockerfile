FROM java:8-jdk

COPY . /opt/dropwizard

EXPOSE 8080

WORKDIR /opt/dropwizard

RUN ["chmod", "+x", "gradlew"]
RUN ["./gradlew", "build"]

CMD ["java", "-jar", "build/libs/backend-1.0-SNAPSHOT.jar", "server", "backend.yml"]
