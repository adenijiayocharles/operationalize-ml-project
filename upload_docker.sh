#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="adenijiayocharles/mludacityproject:v1.0.0"
# dockerpath=<your docker ID/path>

# Step 2:  
# Authenticate & tag
docker login
docker tag mludacityproject $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath