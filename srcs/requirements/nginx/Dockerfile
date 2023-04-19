# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/22 08:54:20 by hrings            #+#    #+#              #
#    Updated: 2023/04/18 16:24:00 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim
RUN apt-get update
RUN apt-get install nginx openssl gettext-base -y
#TODO subj into env
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx.key \
	-out /etc/ssl/certs/nginx.crt \
	-subj "/C=DE/L=Germany/O=wordpress/CN=hrings.42.fr";


COPY ./conf/nginx.conf /
RUN envsubst '$DOMAIN_NAME' < /nginx.conf > /etc/nginx/conf.d/default.conf
EXPOSE 443
CMD ["nginx","-g","daemon off;"]