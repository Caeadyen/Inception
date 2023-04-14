# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 16:46:02 by hrings            #+#    #+#              #
#    Updated: 2023/04/14 21:34:48 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./config/dbinit.sql /tmp/dbinit.sql
COPY ./config/my.cnf /etc/mysql/my.cnf

EXPOSE 3306


# RUN adduser mysql mysql
# RUN chown -R mysql:mysql /var/lib/mysql

RUN mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld


# RUN service mysql start && mysql < /dbinit.sql && rm -f /dbinit.sql;

 
CMD	["mysqld", "--user=mysql" , "--init-file=/tmp/dbinit.sql"]


# ENTRYPOINT ["tail", "-f", "/dev/null"]