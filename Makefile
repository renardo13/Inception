# Makefile for Docker Compose commands

COMPOSE_FILE = srcs/docker-compose.yml

all: up

# Build and start services in detached mode
up:
	mkdir -p /home/${USER}/srcs/data/mariadb
	mkdir -p /home/${USER}/srcs/data/wordpress
	docker compose -f $(COMPOSE_FILE) up -d

# Stop and remove services
down:
	docker compose -f $(COMPOSE_FILE) down

# Start already created containers
start:
	docker compose -f $(COMPOSE_FILE) start

# Stop running containers
stop:
	docker compose -f $(COMPOSE_FILE) stop

# Restart services
restart:
	docker compose -f $(COMPOSE_FILE) restart

# View logs
logs:
	docker compose -f $(COMPOSE_FILE) logs -f

# Build or rebuild services
build:
	docker compose -f $(COMPOSE_FILE) build

# Clean: stop and remove services and volumes
clean:
	@sudo docker stop $$(sudo docker ps -qa) || true 
	@sudo docker rm $$(sudo docker ps -qa) || true
	@sudo docker rmi -f $$(sudo docker images -qa) || true
	@sudo docker volume rm $$(sudo docker volume ls -q) || true
	@sudo docker network rm $$(sudo docker network ls -q) || true
	@sudo rm -rf /home/${USER}/srcs/data

.PHONY: all up down start stop restart logs build clean