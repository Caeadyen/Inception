# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hrings <hrings@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/27 09:30:28 by hrings            #+#    #+#              #
#    Updated: 2023/04/30 23:32:41 by hrings           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:stable-slim

RUN apt-get update

RUN apt-get install wget php php-mysql -y

COPY ./tools/start.sh /start.sh

RUN chmod +x start.sh

EXPOSE 4242

CMD ["/start.sh"]