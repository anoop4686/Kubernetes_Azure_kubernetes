FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
RUN apt update -y && \
    apt install mysql-server -y

## copy conf file 
COPY ./Dockerfile /root/
COPY mysql-user.sh /usr/local/bin/

WORKDIR /usr/local/bin/

ADD mysql-user.sh

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/lib/mysql
VOLUME /etc/mysql

#CMD [ "mysqld" ]

ENTRYPOINT ["/bin/bash", "mysql-user.sh"]

#ENTRYPOINT ["sh", "mysql-user.sh"]