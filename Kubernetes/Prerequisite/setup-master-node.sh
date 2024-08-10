#! /bin/bash

#setting DNS entry
echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf > /dev/null

#setting hosts enrty
echo "192.168.10.100  DevOps-system" >> /etc/hosts
echo "192.168.10.200  worker-system" >> /etc/hosts

#set host name
hostnamectl set-hostname  DevOps-system

# Add kernal rules
echo "net.bridge.bridge-nf-call-ip6tables = 1" > /etc/sysctl.d/k8s.conf
echo "net.bridge.bridge-nf-call-iptables = 1" >> /etc/sysctl.d/k8s.conf
echo "net.ipv4.ip_forward  = 1" >> /etc/sysctl.d/k8s.conf
sudo sysctl --system

#install docker
sudo apt update -y && sudo apt upgrade -y
sudo apt install docker* -y
sudo apt install curl -y
sudo systemctl enable docker && sudo systemctl restart docker

sudo apt install ufw
sudo ufw default allow outgoing
sudo ufw default allow incoming
systemctl enable ufw
systemctl restart ufw
sudo ufw enable

# Add default port and 2376 Docker port
sudo ufw allow 22,80,443,2376/tcp
# Add kubernetes default Master port
sudo ufw allow 6443,2379,2380,10250,10259,10257/tcp
# Add kubernetes default Worker port
sudo ufw allow 10250,10256,30000:32767/tcp



# Install Kuberneets
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update -y
sudo apt install kubeadm kubelet kubectl -y
sudo apt-mark hold kubeadm kubelet kubectl
sudo kubeadm version
sudo systemctl enable kubelet &&  sudo systemctl restart kubelet


# fix issue kubeadm
# kubeadm init --pod-network-cidr=192.168.10.0/24

# Generating configuration credential
#mkdir -p $HOME/.kube
#sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Alternatively, if you are the root user, you can run:

#export KUBECONFIG=/etc/kubernetes/admin.conf

systemctl daemon-reload

# If it is not wokring then first rest and re-enter command
# sudo kubeadm reset

# install wavenet connection
#kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml

#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
echo "Complete"