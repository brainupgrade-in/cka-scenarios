#!/bin/bash

sudo usermod -aG docker $USER
newgrp docker

# Create a Kubernetes cluster using KIND
kind create cluster --name dev-cluster

#mkdir -p $HOME/.kube
#sudo cp -i /root/.kube/config $HOME/.kube/config
#sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Apply scenario setup
kubectl apply -f /workspace/scenario.yaml
