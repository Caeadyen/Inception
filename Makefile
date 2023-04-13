# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/22 11:13:19 by hrings            #+#    #+#              #
#    Updated: 2023/04/12 17:09:31 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: clean up

up:
	@docker-compose -f ./srcs/docker-compose.yml build --no-cache
	@docker-compose -f ./srcs/docker-compose.yml up -d --force-recreate

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean:
	docker stop $$(docker ps -qa)
	docker rm $$(docker ps -qa)
	docker rmi -f $$(docker images -qa)
	docker volume rm $$(docker volume ls -q)
	docker network rm $$(docker network ls -q) 2>/dev/null
	
.PHONY: all re down clean