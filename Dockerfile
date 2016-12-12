FROM centos

RUN yum -y install java-1.8.0-openjdk

COPY webapp.yml /opt/dropwizard/

EXPOSE 8080

WORKDIR /opt/dropwizard

CMD ["java", "-jar", "webapp-1.0-SNAPSHOT.jar", "server", "webapp.yml"]
