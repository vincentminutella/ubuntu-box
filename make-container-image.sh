#!/bin/bash 

## build the container image
docker build -t ubuntu-box . 

## run the new container image
docker run ubuntu-box

