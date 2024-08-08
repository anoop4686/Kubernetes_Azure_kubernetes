#! /bin/bash

# Install docker and firewall
sudo apt install docker.io*  ufw curl -y
sudo systemctl enable docker && sudo systemctl start docker

# enable Firewall
sudo systemctl enable ufw && sudo systemctl enable ufw
#sudo ufw enable

# Add default port and 2376 Docker port
sudo ufw allow 22,80,443,2376/tcp
# Add kubernetes default Master port
sudo ufw allow 6443,2379,2380,10250,10259,10257/tcp
# Add kubernetes default Worker port
sudo ufw allow 10250,10256,30000:32767/tcp

# Setting up Host name
hostnamectl set-hostname k8-worker-node

# Add kernal rules
echo "net.bridge.bridge-nf-call-ip6tables = 1" > /etc/sysctl.d/k8s.conf
echo "net.bridge.bridge-nf-call-ip6tables = 1" >> /etc/sysctl.d/k8s.conf
sudo sysctl -a

# Install Kuberneets
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update -y
sudo apt install kubeadm kubelet kubectl -y
sudo apt-mark hold kubeadm kubelet kubectl

#Add these for connectionil,o9
