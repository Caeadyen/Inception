# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/22 08:54:20 by hrings            #+#    #+#              #
#    Updated: 2023/04/29 20:25:22 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim
RUN apt-get update
RUN apt-get install nginx openssl gettext-base -y

COPY ./conf/nginx.conf /
COPY ./tools/start.sh /
RUN chmod +x start.sh

CMD ["/start.sh"]