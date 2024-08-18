## Build Docker File" 
```  docker build -t anoop4686/apache-burger-king-webserver-8080:v1 . ```

## RUN Docker container ###
``` docker run --name burger-king -d -it -p 8080:80 anoop4686/apache-burger-king-webserver-8080:v1```
``` or ```
``` docker run --name burger-king -d -it -P anoop4686/apache-burger-king-webserver:v1```


### Run Conatine shell mode ###
``` docker exec -it webserver /bin/bash```

### remove all exidted coinated ##
```docker container prune```