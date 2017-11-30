FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD /build/libs/jalgoarena-eureka-1.0.4.jar app.jar
EXPOSE 5000
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=dev","-jar","/app.jar"]