# docker-intro-backend
Sample API in golang for our docker intro session

#Docker TAG Your IMAGES
docker tag <tag id> wizelineacademy/todo-backend:1.0.0

#Docker BUILD Multistaging
docker build -t todo-backend -f Dockerfile.build .

### Installation

Install Dependencies 
``` bash
$ make dep
```


### Run Application

Run The api
``` bash
$ make run
```


### Test Application

test your applicaiton
``` bash
$ make test
```

###
check Docker branch for details on how to run with docker image

### Pending Taks

- [x] Create CRUD for TODOs
- [ ] Unit Testing
- [ ] Handle Environemts via ENV variables
- [ ] Create Docker File
