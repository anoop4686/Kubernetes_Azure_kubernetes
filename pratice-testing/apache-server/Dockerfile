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
    sudo apt install openssh-server -y |  \
    sudo apt install bind9-utils -y
#RUN sudo systemctl restart sshd.service

# copy file local machine to Docker host machine
COPY go /home/anoop/git/html_web_page/currency /var/www/html
CMD ["cp /var/www/html/000-default.conf /etc/apache2/sites-available
EXPOSE 80 443

CMD ["/usr/sbin/httpd","-D"," FOREGROUND" ]


