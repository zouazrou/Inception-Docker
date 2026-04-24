DC = docker compose
DC_FILE = srcs/docker-compose.yml

all : up

up :
	mkdir -p /home/$(USER)/data/db
	mkdir -p /home/$(USER)/data/web
	$(DC) -f $(DC_FILE) up -d

build :
	$(DC) -f $(DC_FILE) build

list :
	$(DC) -f $(DC_FILE) ps -a

down:
	$(DC) -f $(DC_FILE) down

fclean:
	$(DC) -f $(DC_FILE) down -v --rmi all

.PHONY: all up build list down fclean