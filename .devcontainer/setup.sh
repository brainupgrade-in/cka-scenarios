#!/bin/bash

# Create a Kubernetes cluster using KIND
kind create cluster --name dev-cluster

# Apply scenario setup
kubectl apply -f /workspace/scenario.yaml
