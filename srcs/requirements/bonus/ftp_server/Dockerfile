# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/25 21:13:11 by hrings            #+#    #+#              #
#    Updated: 2023/04/27 11:24:08 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim

RUN apt-get update
RUN apt-get install vsftpd openssl -y

COPY ./config/vsftpd.conf /etc/vsftpd.conf
COPY ./tools/start.sh /start.sh

RUN chmod +x start.sh
CMD ["/start.sh"]
