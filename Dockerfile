FROM ubuntu
RUN apt-get update
RUN apt-get install -y  default-jdk
RUN java -version
COPY target/employee-service-0.0.1-SNAPSHOT.jar  .
ENTRYPOINT ["java", "-jar", "employee-service-0.0.1-SNAPSHOT.jar"]