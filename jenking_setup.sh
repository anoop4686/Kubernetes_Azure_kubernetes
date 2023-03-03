docker build -t anoop4686/images:web_host_version1 .
docker login -u anoop4686 -p Anoop@8898
docker push anoop4686/images:web_host_version1 .

kubectl apply -f pod.yaml
kubectl apply -f deploy.yaml
kubectl apply -f servce.yaml