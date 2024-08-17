FROM ubuntu

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools curl vim apache2 openssh-server bind9-utils apache2-utils tcl -y

# Copy HTML file to code
COPY Burger-King /var/www/html

# Backup File
RUN mkdir -p /root/docker-backup/Burger-King
COPY ./Burger-King /root/docker-backup/Burger-King
COPY ./Dockerfile /root/docker-backup
COPY ./Readme.md /root/docker-backup

# creating volume 
VOLUME /var/www/html
VOLUME /etc/apache2/

# open 8080 Ports
RUN echo "Listen 8080" >> /etc/apache2/ports.conf

# Expose port
EXPOSE 8080
    
ENTRYPOINT [ "apache2ctl" ]
CMD ["-DFOREGROUND"]



