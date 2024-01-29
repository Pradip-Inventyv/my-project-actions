FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY /var/lib/docker/tmp/buildkit-mount623734951/build/libs/my-app-1.0-SNAPSHOT.jar  /usr/app/
WORKDIR /usr/app/

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
