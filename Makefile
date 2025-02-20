# Makefile for Docker Compose commands

COMPOSE_FILE = docker-compose.yml

.PHONY: all up down start stop restart logs build clean

all: up

# Build and start services in detached mode
up:
	docker-compose -f $(COMPOSE_FILE) up -d

# Stop and remove services
down:
	docker-compose -f $(COMPOSE_FILE) down

# Start already created containers
start:
	docker-compose -f $(COMPOSE_FILE) start

# Stop running containers
stop:
	docker-compose -f $(COMPOSE_FILE) stop

# Restart services
restart:
	docker-compose -f $(COMPOSE_FILE) restart

# View logs
logs:
	docker-compose -f $(COMPOSE_FILE) logs -f

# Build or rebuild services
build:
	docker-compose -f $(COMPOSE_FILE) build

# Clean: stop and remove services and volumes
clean:
	docker-compose -f $(COMPOSE_FILE) down --volumes --remove-orphans
