FROM tomcat:9.0

RUN apt update
RUN apt install -y tzdata
RUN apt install -y git
RUN apt install -y default-jdk
RUN apt install -y maven
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN mvn -f boxfuse-sample-java-war-hello/pom.xml  package
RUN cp boxfuse-sample-java-war-hello/target/hello-1.0.war $CATALINA_HOME/webapps/
