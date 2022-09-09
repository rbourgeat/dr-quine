# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rbourgea <rbourgea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/05 15:53:16 by rbourgea          #+#    #+#              #
#    Updated: 2022/09/05 17:11:24 by rbourgea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully
COLLEEN_SOURCE = $(COLLEEN).s
GRACE_SOURCE = $(GRACE).s
SULLY_SOURCE = $(SULLY).s
NASM = nasm
CC = clang
CFLAGS = -f macho64
LDFLAGS = -m64 -lc 2>&-

all:	$(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	@$(NASM) $(CFLAGS) $(COLLEEN_SOURCE) -o $(COLLEEN_SOURCE:.s=.o)
	@$(CC) $(LDFLAGS) $(COLLEEN_SOURCE:.s=.o) -o $(COLLEEN)

$(GRACE):
	@$(NASM) $(CFLAGS) $(GRACE_SOURCE) -o $(GRACE_SOURCE:.s=.o)
	@$(CC) $(LDFLAGS) $(LDFLAGS) $(GRACE_SOURCE:.s=.o) -o $(GRACE)

$(SULLY):
	@$(NASM) $(CFLAGS) $(SULLY_SOURCE) -o $(SULLY_SOURCE:.s=.o)
	@$(CC) $(LDFLAGS) $(LDFLAGS) $(SULLY_SOURCE:.s=.o) -o $(SULLY)

clean:
	- rm -f *.o

fclean: clean
	- rm -f $(COLLEEN) $(GRACE) $(SULLY)
	- rm -f test
	- rm tmp_Colleen
	- rm Grace_kid.s
	- rm Sully_*

re: fclean all