FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
RUN apt update -y && \
    apt install net-tools -y | \
    apt install curl -y | \
    apt install nginx

COPY ./nginx.conf   /etc/nginx/conf.d/default.conf
