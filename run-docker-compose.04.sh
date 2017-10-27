#!/usr/bin/env bash

echo "******************"
docker ps -a | awk '{ print $1,$2 }' | grep academy | awk '{print $1 }' | xargs -I {} docker stop {}
docker ps -a | awk '{ print $1,$2 }' | grep academy | awk '{print $1 }' | xargs -I {} docker rm {}

docker-compose -f docker-compose-backend.04.yml -f docker-compose-frontend.04.yml config
docker-compose -f docker-compose-backend.04.yml -f docker-compose-frontend.04.yml up
