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

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/lib/mysql
VOLUME /etc/mysql

COPY mysql-user.sh /usr/local/bin/
#ENTRYPOINT ["mysql-user.sh"]

CMD [ "mysqld" ]
