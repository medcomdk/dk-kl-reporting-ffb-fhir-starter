FROM alpine as fetch-hapi

WORKDIR /tmp

RUN wget -O ROOT.war https://repo1.maven.org/maven2/ca/uhn/hapi/fhir/hapi-fhir-jpaserver-starter/5.2.0/hapi-fhir-jpaserver-starter-5.2.0.war

RUN unzip ROOT.war

FROM tomcat:9.0.38-jdk11-openjdk-slim-buster

RUN mkdir -p /data/hapi/lucenefiles && chmod 775 /data/hapi/lucenefiles

COPY --from=fetch-hapi ./tmp /usr/local/tomcat/webapps/ROOT

COPY ./templates/* /usr/local/tomcat/webapps/ROOT/WEB-INF/templates
COPY ./img/* /usr/local/tomcat/webapps/ROOT/img/

EXPOSE 8080

CMD ["catalina.sh", "run"]