FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Install system requird package and nodejs web server 
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools curl network-manager iputils* wget apt-utils vim nano -y
RUN apt install nodejs npm -y

#configure working directory and install requird package
WORKDIR /myapp
RUN npm install express -y
COPY app1.js /myapp

#Creating backup
RUN mkdir -p /root/docker-backup/
COPY ./app1.js /root/docker-backup/
Copy ./Dockerfile /root/docker-backup/
Copy ./dokcer-compose.yml /root/docker-backup/

# Expose is used for open port 80 and 8081
EXPOSE 80 8080

# ENTRYPOINT and CMD is used for exective apapche.
CMD ["node","app1.js"]