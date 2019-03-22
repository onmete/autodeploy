#!/usr/bin/env bash

echo "  Deploy script started"

echo "  Stopping and removing app container"
docker stop web
docker rm web

echo "  Removing all images"
docker rmi $(docker images)

echo "  Loging to DockerHub"
docker login -u $1 -p $2

echo "  Pulling and running new app container"
# --rm tag removes intermediate containers
docker run -d -p 5000:5000 --rm=true --name web methlock/autodevops:latest  &&  echo "  Done"


# # # Manual docker clearing
# removes all stopped containers
# docker container prune
# removes all dangling images (with <none> tag)
# docker image prune