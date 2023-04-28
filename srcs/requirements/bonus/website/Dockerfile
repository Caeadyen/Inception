# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/28 11:33:10 by hrings            #+#    #+#              #
#    Updated: 2023/04/28 20:38:37 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim

RUN apt-get update

RUN apt-get install hugo -y

RUN hugo new site static-web

COPY ./html/ /static-web/

WORKDIR /static-web

CMD ["hugo","server", "--bind=0.0.0.0", "-p", "3000"]

