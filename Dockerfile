FROM openjdk:8-jdk-alpine
LABEL maintainer="jfco.navarrete@gmail.com"
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/helloworld-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} helloworld.jar
ENTRYPOINT ["java","-jar","/helloworld.jar"]
