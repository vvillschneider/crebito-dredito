FROM openjdk:17-oracle AS BUILD_IMAGE
ENV BASE_DIRECTORY=/app/
WORKDIR $BASE_DIRECTORY
COPY build.gradle settings.gradle gradlew $BASE_DIRECTORY
COPY gradle $BASE_DIRECTORY/gradle
RUN ./gradlew build --stacktrace || return 0
COPY src $BASE_DIRECTORY/src
RUN ./gradlew build --stacktrace

FROM openjdk:17-oracle
ENV BASE_DIRECTORY=/app/
WORKDIR $BASE_DIRECTORY
COPY --from=BUILD_IMAGE $BASE_DIRECTORY/build/libs/main-service.jar .
EXPOSE 8080
ENTRYPOINT ["java","-jar","main-service.jar"]
