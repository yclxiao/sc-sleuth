FROM java:8

EXPOSE 8070

ARG JAR_FILE

ADD target/${JAR_FILE} /eureka-server.jar

ENTRYPOINT ["java", "-jar","/eureka-server.jar"]