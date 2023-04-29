# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/22 11:13:19 by hrings            #+#    #+#              #
#    Updated: 2023/04/29 20:43:27 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

include ./srcs/.env
MARIADB = /home/$(LOGIN_NAME)/data/mariadb
WORDPRESS = /home/$(LOGIN_NAME)/data/wordpress

all: clean up host

up: $(MARIADB) $(WORDPRESS)
	@cd srcs && docker-compose -f docker-compose.yml build
	@cd srcs && docker-compose -f docker-compose.yml up -d

down:
	@cd srcs && docker-compose -f docker-compose.yml down

clean:
	-docker stop $$(docker ps -qa)
	-docker rm $$(docker ps -qa)
	-docker rmi -f $$(docker images -qa)
	-docker volume rm $$(docker volume ls -q)
	-docker network rm $$(docker network ls -q) 2>/dev/null

fclean: clean
	-sudo rm -rf /home/$(LOGIN_NAME)/data/mariadb/*
	-sudo rm -rf /home/$(LOGIN_NAME)/data/wordpress/*

host:
	@grep -qxF '127.0.0.1 $(LOGIN_NAME).42.fr' /etc/hosts || echo "127.0.0.1 $(LOGIN_NAME).42.fr" >> /etc/hosts
$(WORDPRESS):
	sudo mkdir -p $@

$(MARIADB):
	sudo mkdir -p $@

.PHONY: all re down clean fclean