docker build -t anoop4686/images:web_host_version1 /var/lib/jenkins/web_app/
docker push anoop4686/images:web_host_version1 

kubectl apply -f /var/lib/jenkins/web_app/pod.yaml
kubectl apply -f /var/lib/jenkins/web_app/deploy.yaml
kubectl apply -f /var/lib/jenkins/web_app/servce.yaml