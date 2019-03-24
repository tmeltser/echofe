FROM openjdk:8-jre-alpine

RUN addgroup echogroup && adduser -D -H echouser -G echogroup

USER echouser

WORKDIR /opt/com.mavenir/demo/echo

COPY ./build/libs/CI-CD_EchoServerFE-1.0.jar ./

ENTRYPOINT ["java","-jar","CI-CD_EchoServerFE-1.0.jar"]

EXPOSE 9999

LABEL maintainer="tiran.meltser@mavenir.com"
