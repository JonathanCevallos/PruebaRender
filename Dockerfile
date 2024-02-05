FROM amazoncorretto:17-alpine-jdk

RUN apk add --no-cache postgresql-client

COPY target/Prueba-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java" , "-jar" , "/app.jar"]

