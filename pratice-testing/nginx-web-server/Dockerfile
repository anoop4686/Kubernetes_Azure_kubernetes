FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
#RUN apt update -y && \
#    apt install net-tools -y | \
#    apt install curl -y | \
#    apt install nginx -y

RUN apt update -y &&  apt upgrade -y
RUN apt install net-tools -y
RUN apt install curl -y 
RUN apt install nginx -y

## copy conf file 
COPY ./nginx.conf   /etc/nginx/conf.d/default.conf
Copy ./shaddi /usr/share/nginx/html
Copy ./Dockerfile /root/

#create volume to prevent ddisaster. If something went wrong then it wil use.
#VOLUME /usr/share/nginx/html
#VOLUME /etc/nginx

EXPOSE 80 443

# daemon off  is used to sent nfinx in foreground
CMD ["nginx", "-g", "daemon off;" ]
