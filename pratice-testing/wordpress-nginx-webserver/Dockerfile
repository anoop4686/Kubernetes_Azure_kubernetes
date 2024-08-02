FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

# Install system requird package and ngin & PHP web server 

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install net-tools curl network-manager iputils* wget -y
RUN apt install nginx php8.1 php8.1-cli php8.1-fpm php8.1-mysql zip -y 

#Download and configure wordpress
WORKDIR /root/
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mv ./wordpress/* /var/www/html
RUN chown -R www-data:www-data /var/www/html/*

#configure PHP
COPY ./wp-config.php /var/www/html/

# Configure nginx server
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Expose is used for open port 80 and 8081
EXPOSE 80 8081

# ENTRYPOINT and CMD is used for exective apapche.
CMD ["nginx", "-g", "daemon off;"]