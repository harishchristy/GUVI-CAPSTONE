#!/bin/bash


IMAGE_NAME=reactjsapp
IMAGE_VERSION=v1

# Tag the image with the Docker Hub repository name and version
docker tag $IMAGE_NAME:$IMAGE_VERSION harishchristy/prod:$IMAGE_VERSION
docker tag $IMAGE_NAME:$IMAGE_VERSION harishchristy/dev:$IMAGE_VERSION

docker push harishchristy/dev:v1
docker login --username harishchristy --password Manobala@123
docker push harishchristy/prod:v1
docker logout
