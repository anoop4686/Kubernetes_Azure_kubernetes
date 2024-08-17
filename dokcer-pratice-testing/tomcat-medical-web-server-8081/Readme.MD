## Build Docker File" 
```  docker build -t anoop4686/tomcat-medical-web-server-9090:v1 . ```

## RUN Docker container ###
```docker run --name webserver -d -it -p 8081:8080 anoop4686/tomcat-medical-web-server-8081:v1```
``` or ```
``` docker run --name webserver -d -it -P anoop4686/tomcat-medical-web-server-8081:v1```


### Run Conatine shell mode ###
``` docker exec -it webserver /bin/bash```

### remove all exidted coinated ##
```docker container prune```