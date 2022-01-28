FROM openjdk:17-oracle
ENV BASE_DIRECTORY=app
WORKDIR $BASE_DIRECTORY
COPY /build/libs/main-service.jar .
EXPOSE 8080
ENTRYPOINT ["java","-jar","main-service.jar"]
