#! /bin/bash

#setting hosts enrty
echo "192.168.10.100   DevOps-system.com" >> /etc/hosts
echo "192.168.10.200  worker-system.com" >> /etc/hosts

#set host name
hostnamectl set-hostname master-node


# Add kernal rules
echo "net.bridge.bridge-nf-call-ip6tables = 1" > /etc/sysctl.d/k8s.conf
echo "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.d/k8s.conf
sysctl --system

#install docker
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
sudo apt-get install docker.io  curl -y
sudo systemctl enable docker && sudo systemctl restart docker

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

sudo apt-get install -y apt-transport-https ca-certificates curl gpg

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg - dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

sudo apt-get install gpg
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl


# fix issue kubeadm
#sudo swapoff -a
#sudo sed -i '/ swap / s/^/#/' /etc/fstab
#sudo reboot
#kubeadm init --ignore-preflight-errors all

# Generating configuration credential
#mkdir -p $HOME/.kube
#sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Alternatively, if you are the root user, you can run:
#export KUBECONFIG=/etc/kubernetes/admin.conf

# If it is not wokring then first rest and re-enter command
# sudo kubeadm reset

echo "#################################################################################"
echo "###############Wavenet-conf##################################################"
echo "#################################################################################"


# install wavenet connection
# sudo kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml




