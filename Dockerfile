FROM openjdk:17-jdk-slim

WORKDIR /app

COPY target/Prueba-0.0.1-SNAPSHOT.jar app.jar

# Instalar Maven (si estás usando Maven para construir tu proyecto)
RUN apt-get update && apt-get install -y maven

# Ejecutar Maven para construir tu proyecto (ajusta esto según tu configuración)
RUN mvn clean package

# Exponer el puerto de la aplicación Spring Boot (normalmente 8080)
EXPOSE 8080

# Ejecutar la aplicación Spring Boot
CMD ["java", "-jar", "target/*.jar"]
#FROM amazoncorretto:17-alpine-jdk
#
#RUN apk add --no-cache postgresql-client
#
#COPY target/Prueba-0.0.1-SNAPSHOT.jar app.jar
#
#EXPOSE 8080
#
#ENTRYPOINT ["java" , "-jar" , "/app.jar"]

