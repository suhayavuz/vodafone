#define base docker image
FROM openjdk:11
LABEL mainteiner="MertYavuz"
ADD target/hello-world-0.0.1-SNAPSHOT.jar hello-world-docker.jar
ENTRYPOINT ["java", "-jar", "hello-world-docker.jar"]