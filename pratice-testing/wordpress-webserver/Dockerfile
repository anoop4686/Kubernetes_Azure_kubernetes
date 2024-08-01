FROM ubuntu

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
# iputils : used for ping command
# net-tools, curl,  network-manager : networking command
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools curl network-manager iputils*  wordpress* php libapache2-mod-php apache2-utils -y
RUN apt-get install  wordpress* php libapache2-mod-php apache2-utils mysql* -y
RUN mkdir -p /root/backup-docker/photography/

# Copy html file to apapche html location
COPY photography /var/www/html

# copy for backup purpose.
COPY ./photography /root/backup-docker/photography/
COPY ./Dockerfile /root/backup-docker

# Expose is used for open port 80 and 8081
EXPOSE 80 8081

# ENTRYPOINT and CMD is used for exective apapche.
ENTRYPOINT [ "apache2ctl" ]
CMD ["-DFOREGROUND"]