all : up

# docker-compose -f if to build every image of the different services
# -d is to build the images and execute the docker file in background
up :
    docker-compose -f ./srcs/docker-compose.yml up -d

down :
    docker-compose ./srcs/docker-compose.yml down

start :
    docker-compose ./srcs/docker-compose/yml start

stop : 
	docker-compose -f ./srcs/docker-compose.yml stop
