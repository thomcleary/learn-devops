#!/bin/bash
set -x  # Enable command tracing

# Exercise 1.2: Cleanup
# We have containers and an image that are no longer in use and are taking up space. Running docker ps -a and docker image ls will confirm this.
# Clean the Docker daemon by removing all images and containers.
# Submit the output for docker ps -a and docker image ls

# Stop all running containers
docker stop $(docker ps -q)

# Remove all stopped containers
docker container prune -f

# Remove unused images
# -all Remove all unused images, not just dangling ones
docker image prune --all --force

docker ps -a
docker image ls
