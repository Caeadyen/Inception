# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 10:54:28 by hrings            #+#    #+#              #
#    Updated: 2023/04/30 22:37:51 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim
RUN apt-get update
RUN apt-get install -y php-fpm wget php-mysql

COPY ./config/www.conf /etc/php/7.4/fpm/pool.d
COPY ./config/* /

EXPOSE 9000

ENTRYPOINT [ "/wb-install.sh" ]

