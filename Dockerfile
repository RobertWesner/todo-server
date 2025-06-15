FROM gradle:3.5-jdk8-alpine as builder

USER root
WORKDIR /builder

COPY . /builder
RUN gradle build --stacktrace



FROM openjdk:21-jdk

WORKDIR /opt
EXPOSE 8080

COPY --from=builder /builder/build/libs/todolist-0.0.1-SNAPSHOT.jar /opt/server.jar

ENTRYPOINT ["java", "-jar", "/opt/server.jar"]