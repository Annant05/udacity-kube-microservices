#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="annantguptacs15/udacity_predict"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image="$dockerpath" udacity-predict
sleep 15
# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
sudo kubectl port-forward --address 0.0.0.0  deployment/udacity-predict 8000:80