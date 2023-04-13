# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 10:54:28 by hrings            #+#    #+#              #
#    Updated: 2023/04/12 16:00:39 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim
RUN apt-get update
RUN apt-get install -y php-fpm wget php-mysql

COPY ./config/www.conf /etc/php/7.4/fpm/pool.d
COPY ./config/* /

EXPOSE 9000

ENTRYPOINT [ "/wb-install.sh" ]

CMD ["/usr/sbin/php-fpm7.4", "-F"]
