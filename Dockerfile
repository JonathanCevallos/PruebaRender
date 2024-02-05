FROM amazoncorretto:17-alpine-jdk

RUN apk add --no-cache postgresql-client

COPY target/Prueba-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java" , "-jar" , "/app.jar"]