FROM amazoncorretto:17-alpine-jdk

COPY target/Prueba-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT["JAVA" , "-jar" , "/app.jar"]