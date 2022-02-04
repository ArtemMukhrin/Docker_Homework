FROM ubuntu:20.04
RUN apt update
RUN apt install -y tzdata
RUN apt install -y git
RUN apt install -y default-jdk
RUN apt install -y maven
RUN apt install -y tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml  package
RUN cp target/hello-1.0.war /var/lib/tomcat9/webapps/

EXPOSE 8080

