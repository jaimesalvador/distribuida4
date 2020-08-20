#FROM adoptopenjdk/openjdk11:jdk-11.0.7.10-alpine-slim
FROM adoptopenjdk/openjdk11:jre-11.0.6_10-alpine
WORKDIR /opt
ENV PORT 8080
EXPOSE 8080
COPY distribuida03-all.jar /opt/app.jar
ENTRYPOINT exec java $JAVA_OPTS -Dserver.port=8080 -jar app.jar
