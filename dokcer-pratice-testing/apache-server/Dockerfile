FROM ubuntu

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools vim apache2 openssh-server bind9-utils apache2-utils tcl -y

COPY currency /var/www/html

# Backup File
RUN mkdir -p /root/docker-backup/currency
COPY ./currency /root/docker-backup/currency
COPY ./Dockerfile /root/docker-backup
COPY ./Readme.md /root/docker-backup

# creating volume 
VOLUME /var/www/html
VOLUME /etc/apache2/

# Expose port
EXPOSE 80 8081
    
ENTRYPOINT [ "apache2ctl" ]
CMD ["-DFOREGROUND"]



