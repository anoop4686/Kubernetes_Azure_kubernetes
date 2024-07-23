FROM ubuntu

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools vim -y
RUN apt-get install apache2 -y && \
    apt-get install openssh-server -y |  \
    apt-get install bind9-utils -y | \
    apt-get update -y | \
    apt-get install apache2-utils -y | \
    apt install tcl -y

COPY currency /var/www/html

EXPOSE 80 8081
    
ENTRYPOINT [ "apache2ctl" ]

CMD ["-DFOREGROUND"]



