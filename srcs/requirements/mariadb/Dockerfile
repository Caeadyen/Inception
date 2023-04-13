# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 16:46:02 by hrings            #+#    #+#              #
#    Updated: 2023/04/13 14:08:42 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update
RUN apt-get install mariadb-server -y

COPY ./config/dbinit.sql /
COPY ./config/my.cnf /etc/mysql/my.cnf
EXPOSE 3306

RUN service mysql start && mysql < /dbinit.sql && rm -f /dbinit.sql;

# RUN service mysql restart
CMD ["mysql"]


# ENTRYPOINT ["tail", "-f", "/dev/null"]