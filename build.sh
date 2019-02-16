#!/bin/bash

IMAGE=kartografer/golang-dep
TAG=develop

docker rmi -f $IMAGE:$TAG
docker build -t $IMAGE:$TAG .
