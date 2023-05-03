#!/bin/bash -e

echo "Building base image..."
docker build --tag="kubernautslabs/jmeter-base:latest" -f Dockerfile-base .
echo "Building master image..."
docker build --tag="kubernautslabs/jmeter-master:latest" -f Dockerfile-master .
echo "Building slave image..."
docker build --tag="kubernautslabs/jmeter-slave:latest" -f Dockerfile-slave .
echo "Building reporter image..."
docker build --tag="kubernautslabs/jmeter-reporter" -f Dockerfile-reporter .
