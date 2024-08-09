#! /bin/bash

#setting hosts enrty
192.168.2.10    DevOps-system.com >> /etc/hosts
192.168.2.100   DevOps-system.com >> /etc/hosts
192.168.2.20    worker-system.com >> /etc/hosts
192.168.10.200  worker-system.com >> /etc/hosts

#set host name
hostnamectl set-hostname DevOps-system.com

# Add kernal rules
echo "net.bridge.bridge-nf-call-ip6tables = 1" > /etc/sysctl.d/k8s.conf
echo "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.d/k8s.conf
sysctl --system

#install docker
sudo apt update -y
sudo apt install docker.io curl -y
sudo systemctl enable docker && sudo systemctl restart docker


# Install Kuberneets
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update -y
sudo apt install kubeadm kubelet kubectl -y
sudo apt-mark hold kubeadm kubelet kubectl
sudo kubeadm version
sudo systemctl enable kubelet &&  sudo systemctl restart kubelet

# fix issue kubeadm
sudo swapoff -a
sudo sed -i '/ swap / s/^/#/' /etc/fstab
clear
kubeadm init --ignore-preflight-errors all

# Generating configuration credential
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# If it is not wokring then first rest and re-enter command
# sudo kubeadm reset

# install wavenet connection
        # sudo kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml




