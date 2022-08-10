FROM openjdk:17-oracle
ENV BASE_DIRECTORY=app
WORKDIR $BASE_DIRECTORY
COPY /build/libs/crebito-dredito.jar .
EXPOSE 8080
ENTRYPOINT ["java","-jar","crebito-dredito.jar"]
