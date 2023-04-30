# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/28 11:33:10 by hrings            #+#    #+#              #
#    Updated: 2023/04/29 21:31:23 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim

RUN apt-get update

RUN apt-get install hugo gettext-base -y

RUN hugo new site static-web

COPY ./html/ /static-web/

COPY ./tmp/* /tmp/

COPY ./tools/start.sh /

RUN chmod +x start.sh

CMD ["/start.sh"]

