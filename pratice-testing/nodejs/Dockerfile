FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Install system requird package and ngin & PHP web server 

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools curl network-manager iputils* wget apt-utils vim nano -y
RUN apt install nodejs npm -y
RUN npm install express -y

WORKDIR /myapp

COPY app1.js /myapp

#Creating Volume
VOLUME /var/www/
VOLUME /etc/nginx/

# Expose is used for open port 80 and 8081
EXPOSE 80 8080

# ENTRYPOINT and CMD is used for exective apapche.
CMD ["node","app1.js"]