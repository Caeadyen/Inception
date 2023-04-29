# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 16:46:02 by hrings            #+#    #+#              #
#    Updated: 2023/04/29 20:53:49 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server gettext-base -y

COPY ./config/dbinit.sql /tmp/dbinit.sql
COPY ./config/my.cnf /etc/mysql/my.cnf
COPY ./config/start.sh /start.sh

EXPOSE 3306

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

CMD [ "/start.sh" ]