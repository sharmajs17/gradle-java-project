FROM openjdk:8-jre-alpine

EXPOSE 8089

#COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
COPY /gradle/wrapper/gradle-wrapper.jar /usr/app/
WORKDIR /usr/app

#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
ENTRYPOINT ["java", "-jar", "gradle-wrapper.jar"]
