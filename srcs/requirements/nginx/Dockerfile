# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/22 08:54:20 by hrings            #+#    #+#              #
#    Updated: 2023/04/12 13:13:26 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim
RUN apt-get update
RUN apt-get install nginx -y

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 443
CMD ["nginx","-g","daemon off;"]