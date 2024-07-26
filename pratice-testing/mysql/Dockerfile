FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
RUN apt update -y
RUN apt install mysql-server -y

## copy conf file 
COPY ./Dockerfile /root/
COPY mysql-user.sh /usr/local/bin/

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/lib/mysql
VOLUME /etc/mysql

RUN chmod 777 /usr/local/bin/mysql-user.sh
RUN /usr/local/bin/mysql-user.sh

CMD [ "mysqld" ]
#ENTRYPOINT ["mysqld", "mysql-user.sh"]