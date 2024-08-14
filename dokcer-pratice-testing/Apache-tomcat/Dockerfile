FROM ubuntu:24.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package for tomcat
RUN apt update -y && apt upgrade -y
RUN apt-cache search openjdk | grep openjdk-17 && \
    apt update -y | \
    apt install openjdk-17-jre -y | \
    apt install openjdk-17-jdk -y

# install appache package
RUN apt-get install net-tools vim apache2 openssh-server bind9-utils apache2-utils tcl -y

COPY medical /var/www/html

# create director
RUN mkdir -p /opt/tomcat

## ADD command is used to copy and Extract file
ADD ./ apache-tomcat-10.1.26.tar.gz /opt/tomcat/

# setting Java environment to user home.
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/" > /root/.bash_profile

#RUN source /root/.bash_profile
# source ~/.bash_profile
#create working directory

WORKDIR /opt/tomcat/apache-tomcat-10.1.26/bin/

#backup file
RUN mkdir -p /root/dokcer-backup
COPY ./Dockerfile /root/dokcer-backup
COPY ./apache-tomcat-10.1.26.tar.gz /root/dokcer-backup
COPY ./tomcat-users.xml /root/dokcer-backup

# Copy user xml file
RUN rm -rf /opt/tomcat/apache-tomcat-10.1.26/conf/tomcat-users.xml
COPY ./tomcat-users.xml  /opt/tomcat/apache-tomcat-10.1.26/conf/
COPY ./context.xml /opt/tomcat/apache-tomcat-10.1.26/webapps/host-manager/META-INF/context.xml
COPY ./context.xml /opt/tomcat/apache-tomcat-10.1.26/webapps/manager/META-INF/context.xml

#exposing port
EXPOSE 80 8080 8081 8085 443

# run tomcat server.
CMD ["/opt/tomcat/apache-tomcat-10.1.26/bin/catalina.sh","run"]