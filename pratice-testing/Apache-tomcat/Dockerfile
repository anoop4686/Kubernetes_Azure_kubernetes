FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
#RUN apt update -y  
#RUN apt-cache search openjdk | grep openjdk-17
#RUN apt update -y && \    
#    apt install openjdk-17-jre -y | \
#    apt install openjdk-17-jdk -y

RUN apt update -y 
RUN apt-cache search openjdk | grep openjdk-17
RUN apt update -y 
RUN apt install openjdk-17-jre -y
RUN apt install openjdk-17-jdk -y

RUN mkdir /opt/tomcat

## ADD command is used to copy and Extract file
ADD ./ apache-tomcat-10.1.26.tar.gz /opt/tomcat/

WORKDIR /opt/tomcat/apache-tomcat-10.1.26

EXPOSE 8080 8081 8085 443

CMD ["/opt/tomcat/apache-tomcat-10.1.26/bin/startup.sh","run"]