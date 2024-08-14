## Build Docker File" 
```  docker build -t anoop4686/apache-Burger-King-webserver-8080:v1 . ```

## RUN Docker container ###
``` docker run --name webserver -d -it -p 8080:80 anoop4686/apache-Burger-King-webserver-8080:v1```
``` or ```
``` docker run --name webserver -d -it -P anoop4686/apache-Burger-King-webserver:v1```


### Run Conatine shell mode ###
``` docker exec -it webserver /bin/bash```

### remove all exidted coinated ##
```docker container prune```