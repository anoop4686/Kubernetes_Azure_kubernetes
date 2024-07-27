## Create custom network ###
```
docker network create custom-network --subnet 192.168.10.0/24 --gateway 192.168.10.2
```
### docker build images ###
```
docker build -t anoop3686/apache-custom-network .
```

### docker run images ###
```
docker run --name webserver-apache-server --network DevOps-network -d -it -P ImageID
```
### docker run map inbound and outbound same port ###
```
docker run --name webserver-apache-server2 --ne
twork DevOps-network -d -it -p 80:80 -p 8081:8081 ImageID
```
### docker conatiner inside command ###
```
docker exec -it container-ID /bin/bash
```