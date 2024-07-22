FROM centos

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

RUN yum update -y && yum upgrade -y
RUN yum install sudo -y
RUN yum install net-tools vim -y
RUN yum install apache2* -y && \
    yum install openssh-server -y |  \
    yum install bind9-utils -y
#RUN sudo systemctl restart sshd.service

# copy file local machine to Docker host machine
#COPY currency /var/www/html

#docker cp /var/www/html/000-default.conf /etc/apache2/sites-available

EXPOSE 80 443 85

#CMD ["cp /var/www/html/000-default.conf /etc/apache2/sites-available"]
CMD ["apache2-foreground"]
#RUN systemctl restart apache2.service


