FROM ubuntu

# update the docker package
RUN apt-get update -y

# install sudo and apt package in docker image
RUN apt-get install -y apt-utils
RUN apt-get -y install sudo 
RUN apt-get install -y curl

# Java Install
RUN apt-get update -y
# Run sudo apt install -y openjdk-11-jdk 

# Jenking Install

RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN sudo apt update -y
RUN sudo apt install jenkins -y
RUN sudo systemctl restart jenkins