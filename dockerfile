# Imagen base ligera con Java 21
FROM openjdk:21-jdk-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /root/SpringTest/docker-cliente

# Copiar el jar al contenedor
COPY clientes-1.jar cliente.jar

# MySQL Variables
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=cruz123
ENV MYSQL_HOST=62.171.169.111

# Puerto de tu aplicación (ajústalo si es diferente)
EXPOSE 8090

# Ejecutar el jar
ENTRYPOINT ["java", "-jar", "cliente.jar"]
