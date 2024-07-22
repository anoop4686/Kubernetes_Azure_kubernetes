FROM ubuntu

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools vim -y
RUN apt-get install apache2 -y && \
    apt-get install openssh-server -y |  \
    apt-get install bind9-utils -y

RUN apt-get update -y 

RUN apt-get install apache2-utils -y

RUN apt install tcl -y

EXPOSE 80 
    
ENTRYPOINT [ "apache2ctl" ]

CMD ["-DFOREGROUND"]
#RUN sudo systemctl restart sshd.service

# copy file local machine to Docker host machine
#COPY currency /var/www/html

#docker cp /var/www/html/000-default.conf /etc/apache2/sites-available

#EXPOSE 80 443 85

#CMD ["cp /var/www/html/000-default.conf /etc/apache2/sites-available"]
#CMD ["apache2-foreground"]
#RUN systemctl restart apache2.service


