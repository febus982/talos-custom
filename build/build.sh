#!/usr/bin/env bash

# If running with a local docker engine

#docker run -d -p 5005:5000 \
#    --restart always \
#    --name local registry:2
#export IMAGE_REGISTRY=127.0.0.1:5005
#docker buildx create --driver docker-container  --driver-opt network=host --name local1 --buildkitd-flags '--allow-insecure-entitlement security.insecure' --use

export IMAGE_REGISTRY=docker.io
export USERNAME=febus982

export PUSH=true
export PLATFORM=linux/arm64
export INSTALLER_ARCH=arm64

git apply ../min_memory.patch
make installer
make imager
make image-rpi_generic
git apply -R ../min_memory.patch
