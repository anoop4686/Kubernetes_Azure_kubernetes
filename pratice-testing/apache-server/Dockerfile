FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop"
LABEL email="Anoopmauray144@gmail.com"

RUN apt update -y

RUN  apt install sudo -y

RUN sudo apt install net-tools vim -y

RUN sudo apt install apache2 -y && \
    sudo apt install openssh-server -y \
    sudo apt install bind9-utils -y
RUN sudo systemctl restart sshd.service




