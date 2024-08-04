FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Backup Docker file
RUN mkdir -p /root/docker-backup
COPY ./Dockerfile /root/docker-backup/
COPY ./Readme.md /root/docker-backup

# Installing recommanded package
RUN apt update -y
RUN apt install mysql mysql-server -y

# setting up working directory
WORKDIR  /usr/local/bin/

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/lib/mysql
VOLUME /etc/mysql

CMD [ "mysqld" ]