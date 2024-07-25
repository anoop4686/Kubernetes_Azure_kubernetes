FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
RUN apt update -y && \
    apt install net-tools curl mysql-server* -y

## copy conf file 
Copy ./Dockerfile /root/

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/lib/mysql
VOLUME /etc/mysql

CMD [ "mysqld" ]
