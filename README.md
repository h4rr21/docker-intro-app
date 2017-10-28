**RUN THE APPLICATION**

** How to run Mongo DB example: **
docker run -d -p 27017:27017 --name sample-mongo mongo

** How to run and link the DB to the app BACKEND**
docker run -it --rm --name todo-backend -p 8000:8000 --link sample-mongo:mongodb wizelineacademy/todo-backend:1.0.0

** How to run  FRONTEND **
docker run -it --rm --name todo-frontend -p 80:80 wizelineacademy/todo-frontend:1.0.0

** Docker Volumes **
# Storage Drivers
# Propagación y Obscuring (diferentes tipos de propagar info)
docker volume ls
docker volume create my-first-vol


# tmpfs - volumes - mount
#Crear un volumen anonimo
-v /etc/ngingx
--mount type=volume,target=/etc/ngingx

# Borrar todos los volumenes (que no estan atachados)
#custom drivers para volumes
 docker volume prune

**Docker volues**
*volumenes in different file systems must be created before docker deaomon runs

 #Docker network (default (no DNS -just dokcer), none, host)
 docker network ls

 #create a NEW network 
 docker network create --driver bridge isolated_n
 #create a container with a new Network 
 docker run -d --network=isolated_nw nginx

#Inspect Docker Containers
 docker inspect <docker ps ID>

**Docker Events**
docker events --since 2017-10-28
docker events --since 2017-10-28T10:00:00 --until  2017-10-28T20:00:00
docker events --filter 'event=create' --since 2017-10-28T10:00:00 
docker events --filter 'tpye=image"'--since 2017-10-28T10:00:00 
docker events --format '{{json .}}'