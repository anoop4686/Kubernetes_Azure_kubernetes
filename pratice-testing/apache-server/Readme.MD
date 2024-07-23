## Build Docker File" 
```  docker build -t anoop4686/docker-pratice/appache-test-server:v1 . ```

## RUN Docker container ###
``` docker run --name webserver -d -it -p 80:80 -p 8081:80 anoop4686/docker-pratice/appache-test-server:v1```

### Run Conatine shell mode ###
``` docker exec -it webserver /bin/bash```

### remove all exidted coinated ##
```docker container prune```