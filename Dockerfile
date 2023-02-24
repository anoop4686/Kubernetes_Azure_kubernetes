FROM ubuntu
# update the docker package
RUN apt-get update -y

# install sudo and apt package in docker image
RUN apt-get -y install sudo &&  apt-get install -y apt-utils

# Install apache2 package in docker image
RUN apt-get install apache2 -y     
RUN apt-get install apache2-utils -y

# install network related package in docker image
RUN apt-get install net-tools -y 

# To start the apache services
RUN echo "ServerName allerin.localhost" >> /etc/apache2/apache2.conf
RUN sudo service apache2 restart

# Hosting custom website
RUN mkdir -p /var/www/webapp/

# Copy the custom html file in Apache2 
COPY index.html kubnetes.png /var/www/webapp/
COPY info.net.conf  /etc/apache2/sites-available/

# enable the custom website
RUN a2ensite info.net.conf

# Disbale the default Apache2 site
RUN a2dissite 000-default.conf

# Command to restart the Apache service and run in Foreground
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80