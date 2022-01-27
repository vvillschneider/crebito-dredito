FROM openjdk:17-oracle

WORKDIR app

COPY build/libs/*.jar  main-service.jar

ENTRYPOINT ["java","-jar","main-service.jar"]
