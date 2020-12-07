FROM adoptopenjdk/openjdk11:alpine
MAINTAINER holkerdev
VOLUME /tmp
EXPOSE 8761
ADD target/eureka-server-0.0.1.jar eureka.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka.jar"]