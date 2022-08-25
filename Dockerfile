# FROM openjdk:11

# LABEL maintainer="MUDITMANGAL"
# ADD target/authorization-microservice.jar authorization-microservice.jar
# ENTRYPOINT ["java","-jar","authorization-microservice.jar"]

# FROM openjdk:11
# VOLUME /tmp
# EXPOSE 9090
# ADD target/authorization-microservice.jar authorization-microservice.jar
# ENV JAVA_OPTS=""
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /authorization-microservice.jar" ]

FROM public.ecr.aws/ews-network/amazoncorretto:11-alpine
EXPOSE 9090
ADD target/authorization-microsevice.jar authorization-microservice.jar
ENTRYPOINT ["java", "-jar","authorization-microservice.jar"]
