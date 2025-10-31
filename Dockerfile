FROM openjdk:21-jdk-slim 
WORKDIR /app/app.jar 
COPY build/libs/*.jar app.jar 
EXPOSE 8093
ENTRYPOINT ["java", "-jar", "app.jar"] 
