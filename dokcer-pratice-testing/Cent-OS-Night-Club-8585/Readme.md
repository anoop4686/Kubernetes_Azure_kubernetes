## Build Docker File" 
```  docker build -t anoop4686/Cent-OS-Night-Club-8585:v1 . ```

## RUN Docker container ###
``` docker run --name webserver -d -it -p 9090:9090 anoop4686/Cent-OS-Night-Club-8585:v1```
``` or ```
``` docker run --name webserver -d -it -P anoop4686/Cent-OS-Night-Club-8585:v1```

### Run Conatine shell mode ###
``` docker exec -it webserver /bin/bash```

### remove all exidted coinated ##
```docker container prune```