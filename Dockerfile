FROM java:8-jdk

RUN ["./gradlew", "test"]

COPY . /opt/dropwizard

EXPOSE 8080

WORKDIR /opt/dropwizard

CMD ["java", "-jar", "build/libs/backend-1.0-SNAPSHOT.jar", "server", "backend.yml"]
