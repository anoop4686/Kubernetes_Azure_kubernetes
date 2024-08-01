FROM ubuntu

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Installing recommanded package
# iputils : used for ping command
# net-tools, curl,  network-manager : networking command
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools curl network-manager iputils* wget -y

#installing nginx webserver, PHP and mysql, Dependency od wordpress 
RUN apt-get install nginx -y
RUN apt-get update -y
RUN apt install php8.1 php8.1-cli php8.1-fpm php8.1-mysql zip -y 

#Download and configure wordpress
WORKDIR /root/
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv ./wordpress/* /var/www/html
RUN chown -R www-data:www-data /var/www/html/*

RUN mkdir -p /root/backup-docker/photography/

#configure PHP
RUN cp ./wp-config.php /var/www/html/

# Copy html file to apapche html location
#COPY photography /var/www/html

# copy for backup purpose.
COPY ./photography /root/backup-docker/photography/
COPY ./Dockerfile /root/backup-docker

RUN cp ./default /etc/nginx/sites-available/
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Expose is used for open port 80 and 8081
EXPOSE 80 8081

# ENTRYPOINT and CMD is used for exective apapche.
CMD ["nginx", "-g", "daemon off;"]