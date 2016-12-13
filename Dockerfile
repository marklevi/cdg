FROM java:8-jre

COPY backend.yml /opt/dropwizard/
COPY build/libs/backend-1.0-SNAPSHOT.jar /opt/dropwizard/
EXPOSE 8080

WORKDIR /opt/dropwizard

CMD ["java", "-jar", "backend-1.0-SNAPSHOT.jar", "server", "backend.yml"]
