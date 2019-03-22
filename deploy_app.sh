#!/usr/bin/env bash

printf "\n Deploy script started \n"

printf "\n Stopping and removing app container \n"
docker stop web
docker rm web

printf "\n Removing all images \n"
docker rmi $(docker images)

printf "\n Login to DockerHub \n"
sleep 3
docker login -u $1 -p $2

printf "\n Pulling and running new app container \n"
# --rm tag removes intermediate containers
docker run -d -p 5000:5000 --rm=true --name web $1/autodevops:latest  &&  printf "\n Done \n"


# # # Manual docker clearing
# removes all stopped containers
# docker container prune
# removes all dangling images (with <none> tag)
# docker image prune