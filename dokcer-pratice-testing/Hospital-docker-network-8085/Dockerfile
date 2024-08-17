FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
# iputils : used for ping command
# net-tools, curl,  network-manager : networking command
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools vim curl network-manager iputils* -y
RUN apt-get install apache2 -y && \
    apt-get install bind9-utils -y | \
    apt-get update -y | \
    apt-get install apache2-utils -y | \
    apt install tcl -y

RUN mkdir -p /root/backup-docker/hospital/

# Copy html file to apapche html location
COPY hospital /var/www/html

# copy for backup purpose.
COPY ./hospital /root/backup-docker/hospital/
COPY ./Dockerfile /root/backup-docker

# open 8085 Ports
RUN echo "Listen 8085" >> /etc/apache2/ports.conf


# Expose is used for open port 80 and 8081
EXPOSE 80 8085

# ENTRYPOINT and CMD is used for exective apapche.
ENTRYPOINT [ "apache2ctl" ]
CMD ["-DFOREGROUND"]