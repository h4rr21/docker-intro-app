**RUN THE APPLICATION**

** How to run Mongo DB example: **
docker run -d -p 27017:27017 --name sample-mongo mongo

** How to run and link the DB to the app BACKEND**
docker run -it --rm --name todo-backend -p 8000:8000 --link sample-mongo:mongodb wizelineacademy/todo-backend:1.0.0

** How to run  FRONTEND **
docker run -it --rm --name todo-frontend -p 80:80 wizelineacademy/todo-frontend:1.0.0