## Create custom network if you want ###
```
docker network create custom-network --subnet 192.168.10.0/24 --gateway 192.168.10.2
```
### docker build images ###
```
docker build -t anoop4686/nginx-web-server:v1 .
```
### docker build images with no-cache ###

```
docker build -t anoop4686/nginx-web-server:v1 --no-cache .
```
### docker run images ###
```
docker run --name web-server --network DevOps-network -d -it -P ImageID
```
### docker run map inbound and outbound same port ###
```
docker run --name web-server --network DevOps-network -d -it -p 80:80 -p 8081:8081 ImageID
```
### docker conatiner inside command ###
```
docker exec -it container-ID /bin/bash
```