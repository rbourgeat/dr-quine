# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbourgea <rbourgea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/30 13:00:45 by rbourgea          #+#    #+#              #
#    Updated: 2022/09/02 16:00:39 by rbourgea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).c
GRACE_SOURCE = $(GRACE).c
SULLY_SOURCE = $(SULLY).c
CC = clang
CFLAGS = -Wall -Werror -Wextra

all:	$(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	@$(CC) $(CFLAGS) $(COLLEEN_SOURCE) -o $(COLLEEN)

$(GRACE):
	@$(CC) $(CFLAGS) $(GRACE_SOURCE) -o $(GRACE)

$(SULLY):
	@$(CC) $(CFLAGS) $(SULLY_SOURCE) -o $(SULLY)

clean:
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

fclean: clean
	- rm tmp_Colleen
	- rm Grace_kid.c
	- rm Sully_0.c
	- rm Sully_1.c
	- rm Sully_2.c
	- rm Sully_3.c
	- rm Sully_4.c
	- rm Sully_5.c

re: fclean all