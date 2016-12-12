FROM centos

RUN yum -y install java-1.8.0-openjdk

COPY backend.yml /opt/dropwizard/

WORKDIR /opt/dropwizard

CMD ["java", "-jar", "backend-1.0-SNAPSHOT.jar", "server", "backend.yml"]
