#!/usr/bin/env bash

echo "  Deploy script started"

echo "  Stopping app container"
docker stop web

echo "  Removing all images"
docker rmi $(docker images)

# start container with app
# --rm tag removes intermediate containers
echo "  Pulling and running new app container"
docker login -u $1 -p $2
docker run -d -p 5000:5000 --rm=true --name web methlock/autodevops:latest  &&  echo "  Done"


# # # Manual docker clearing
# removes all stopped containers
# docker container prune
# removes all dangling images (with <none> tag)
# docker image prune