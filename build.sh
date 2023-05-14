#!/bin/bash
cd /home/ubuntu/reactjs-demo/
docker build -t reactjsapp:v1 .
docker run -d reactjsapp
docker run --publish 3000:3000 reactjsapp
docker-compose build
docker-compose run ap
docker-compose up -d
