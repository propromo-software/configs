#!/bin/bash

# dependencies
sudo dnf update -y
sudo dnf install -y docker
sudo dnf install -y podman podman-docker conntrack
sudo dnf install -y curl

## minikube (https://docs.oracle.com/en/learn/ol-minikube/index.html#install-minikube / https://minikube.sigs.k8s.io/docs/start/)
cd ~; curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube start --driver=podman

# firewall settings
sudo firewall-cmd --zone=public --add-port=22/tcp --permanent
sudo firewall-cmd --zone=public --add-port=80/tcp --permanent
sudo firewall-cmd --zone=public --add-port=443/tcp --permanent
sudo firewall-cmd --reload

# cicd commandline tool
mkdir ~/.kube
docker run --rm -it -v ~/.kube:/root/.kube oamdev/vela-cli version

# cicd core
vela install
