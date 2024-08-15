FROM centos

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum update -y && yum upgrade -y
RUN yum install net-tools vim -y
RUN yum install httpd -y && \
    yum install openssh-server openssh-clients -y |  \
    yum install bind-utils -y
#RUN sudo systemctl restart sshd.service

# copy file local machine to Docker host machine
COPY Night-Club /var/www/html

#docker cp /var/www/html/000-default.conf /etc/apache2/sites-available

EXPOSE 80 443 8081

#CMD ["cp /var/www/html/000-default.conf /etc/apache2/sites-available"]
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]


