FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
RUN apt update -y
RUN apt install mysql-server -y

## copy conf file 
COPY ./Dockerfile /root/
COPY ./init-scripts/ /docker-entrypoint-initdb.d/

WORKDIR  /usr/local/bin/

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/lib/mysql
VOLUME /etc/mysql

CMD [ "mysqld" ]