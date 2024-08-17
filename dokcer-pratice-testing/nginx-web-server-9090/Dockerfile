FROM ubuntu:22.04

# Name or email of person or group 
MAINTAINER "Anoop Maurya"

# Whon is writitng these file
LABEL name="Anoop Maurya"
LABEL email="Anoopmauray144@gmail.com"

COPY ./Dockerfile /root/

# Installing recommanded package
RUN apt update -y && apt upgrade -y
RUN apt install net-tools curl nginx network-manager iputils* -y
RUN mkdir -p /root/docker-backup/shaddi

## COPY conf file  and docker backup file
COPY ./shaddi /var/www/html
COPY ./Dockerfile /root/docker-backup/shaddi
COPY ./shaddi /root/docker-backup/shaddi

#create volume to prevent ddisaster. If something went wrong then it wil use.
VOLUME /var/www/html
VOLUME /etc/nginx

# Open Ports
sed -i 's/80/9090/g'  /etc/nginx/sites-available/default

# Expose port in run web server
EXPOSE 80 443 9095

# daemon off  is used to sent nfinx in foreground
CMD ["nginx", "-g", "daemon off;" ]
