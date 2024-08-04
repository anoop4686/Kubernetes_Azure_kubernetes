FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
RUN apt update -y && \ 
    apt-cache search openjdk | grep openjdk-17 && \
    apt update -y && \    
    apt install openjdk-17-jre -y | \
    apt install openjdk-17-jdk -y

# create director
RUN mkdir -p /opt/tomcat

## ADD command is used to copy and Extract file
ADD ./ apache-tomcat-10.1.26.tar.gz /opt/tomcat/

# setting Java environment to user home.
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/" > /root/.bash_profile

#RUN source /root/.bash_profile

#create working directory
WORKDIR /opt/tomcat/apache-tomcat-10.1.26/bin/

#backup file
RUN mkdir -p /root/dokcer-backup
COPY ./Dockerfile /root/dokcer-backup
COPY ./apache-tomcat-10.1.26.tar.gz /root/dokcer-backup

#exposing port
EXPOSE 80 8080 8081 8085 443

# run tomcat server.
CMD ["/opt/tomcat/apache-tomcat-10.1.26/bin/catalina.sh","run"]