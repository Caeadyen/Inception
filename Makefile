# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/22 11:13:19 by hrings            #+#    #+#              #
#    Updated: 2023/05/03 17:27:35 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./srcs/.env
MARIADB = /home/$(LOGIN_NAME)/data/mariadb
WORDPRESS = /home/$(LOGIN_NAME)/data/wordpress

all: clean host build up

build: $(MARIADB) $(WORDPRESS)
	@cd srcs && docker compose -f docker-compose.yml build --no-cache

up: $(MARIADB) $(WORDPRESS)
	@cd srcs && docker compose -f docker-compose.yml up -d

down:
	@cd srcs && docker compose -f docker-compose.yml down

clean:
	-docker stop $$(docker ps -qa)
	-docker rm $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q) 2>/dev/null

fclean: clean
	@docker system prune -f
	-sudo rm -rf /home/$(LOGIN_NAME)/data/mariadb/*
	-sudo rm -rf /home/$(LOGIN_NAME)/data/wordpress/*

host:
	@grep -qxF '127.0.0.1 $(LOGIN_NAME).42.fr' /etc/hosts || sudo bash -c " echo 127.0.0.1 $(LOGIN_NAME).42.fr >> /etc/hosts"
$(WORDPRESS):
	sudo mkdir -p $@

$(MARIADB):
	sudo mkdir -p $@

.PHONY: all re down clean fclean