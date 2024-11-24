#!/bin/bash
set -x  # Enable command tracing

# Exercise 1.3: Secret message
# Now that we've warmed up it's time to get inside a container while it's running!
# Image devopsdockeruh/simple-web-service:ubuntu will start a container that outputs logs into a file. Go inside the running container and use tail -f ./text.log to follow the logs. Every 10 seconds the clock will send you a "secret message".
# Submit the secret message and command(s) given as your answer.

docker run -d --rm --name secret-message devopsdockeruh/simple-web-service:ubuntu
docker exec -it secret-message bash

# root@c9217bbcac95:/usr/src/app# cat text.log
# 2024-11-24 07:49:20 +0000 UTC
# 2024-11-24 07:49:22 +0000 UTC
# 2024-11-24 07:49:24 +0000 UTC
# 2024-11-24 07:49:26 +0000 UTC
# 2024-11-24 07:49:28 +0000 UTC
# Secret message is: 'You can find the source code here: https://github.com/docker-hy'
# 2024-11-24 07:49:30 +0000 UTC
# 2024-11-24 07:49:32 +0000 UTC

docker stop secret-message
