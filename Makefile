# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrouabeh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/02 18:06:58 by mrouabeh          #+#    #+#              #
#    Updated: 2019/10/11 18:54:06 by mrouabeh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libft.a

SRC=ft_putnbr.c ft_islower.c ft_isupper.c ft_abs.c ft_putchar.c ft_putstr.c ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_itoa.c ft_memccpy.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

OBJ= $(SRC:.c=.o)

FLAGS=-Wall -Wextra -Werror



all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $^

.o: .c
	gcc $(FLAGS) -I./ -o $@ -c $<

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	
re: fclean all

.PHONY: all clean fclean re
