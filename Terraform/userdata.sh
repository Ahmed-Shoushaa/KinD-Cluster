#!/bin/bash

#Download Kubectl command: 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

#install Docker 
sudo apt-get update && sudo apt-get install docker.io -y
sudo snap install docker
sudo usermod -aG docker $USER
sudo chmod 666 /var/run/docker.sock

#install KinD command to create KinD clusters 
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.18.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

#Create KinD Cluster
kind create cluster --name my-app-cluster

#Install terraform
sudo snap install terraform --classic


