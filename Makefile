# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 17:39:00 by abellion          #+#    #+#              #
#    Updated: 2015/03/22 17:22:40 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = 	ft_bzero.s \
		ft_strcat.s \
		ft_isalpha.s \
		ft_isdigit.s \
		ft_isalnum.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_puts.s \
		ft_strlen.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s \
		ft_strchr.s \
		ft_strrchr.s \
		ft_strequ.s \
		ft_strnew.s \
		ft_strcmp.s \
		ft_strclr.s \
		ft_atoi.s \

OBJ = $(SRC:.s=.o)
ARCHIVE_NAME = libfts.a
SOFT_NAME = libfts

all: $(SOFT_NAME)

$(SOFT_NAME): $(OBJ)
	ar rcs $(ARCHIVE_NAME) $(OBJ)

%.o: %.s
	~/.brew/bin/nasm -f macho64 $< -o $@

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(ARCHIVE_NAME)

re: fclean all
