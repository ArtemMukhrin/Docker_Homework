FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk
RUN apt install -y maven
apt install tomcat9
