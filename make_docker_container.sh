#!/bin/bash

#DOCKER_BUILDKIT=0 
docker build -t ping-server . --platform linux/amd64
docker tag ping-server ping-server:latest