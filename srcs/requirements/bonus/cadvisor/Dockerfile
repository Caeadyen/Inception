# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 17:19:32 by hrings            #+#    #+#              #
#    Updated: 2023/04/30 23:19:44 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim

RUN apt-get update

RUN apt-get install wget -y

RUN wget https://github.com/google/cadvisor/releases/download/v0.39.2/cadvisor

RUN chmod +x cadvisor

EXPOSE 8080

CMD ["./cadvisor"]
