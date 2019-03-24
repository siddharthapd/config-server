# Running image - docker run -p 18081:18081 -v /opt/javadev/workspace/config-repo:/config-repo config-server:latest

# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
MAINTAINER siddharthap <sid.cse2013@gmail.com>

VOLUME /config-repo
VOLUME /opt/javadev/logs
COPY /target/config-1.0-SNAPSHOT.jar /opt/config-1.0-SNAPSHOT.jar
WORKDIR /
# run application with this command line
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/opt/config-1.0-SNAPSHOT.jar"]
EXPOSE 18081