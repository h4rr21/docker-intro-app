#!/usr/bin/env bash

echo "******************"
docker ps -a | awk '{ print $1,$2 }' | grep academy | awk '{print $1 }' | xargs -I {} docker stop {}
docker ps -a | awk '{ print $1,$2 }' | grep academy | awk '{print $1 }' | xargs -I {} docker rm {}
docker-compose  -f Backend/docker-compose.08.yml -f Frontend/docker-compose.08.yml config
docker-compose  -f Backend/docker-compose.08.yml -f Frontend/docker-compose.08.yml up