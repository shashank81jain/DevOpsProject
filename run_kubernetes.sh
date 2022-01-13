#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=namit11/devopsproj

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devopsproj --image=$dockerpath --port=8080

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/devopsproj 8080:80

cmd /k