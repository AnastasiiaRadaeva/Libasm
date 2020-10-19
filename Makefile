#/* ************************************************************************** */
#/*                                                                            */
#/*                                                        :::      ::::::::   */
#/*   Makefile                                           :+:      :+:    :+:   */
#/*                                                    +:+ +:+         +:+     */
#/*   By: kbatwoma <kbatwoma@student.21-school.ru>   +#+  +:+       +#+        */
#/*                                                +#+#+#+#+#+   +#+           */
#/*   Created: 2020/10/19 11:57:45 by kbatwoma          #+#    #+#             */
#/*   Updated: 2020/10/14 17:53:22 by kbatwoma         ###   ########.fr       */
#/*                                                                            */
#/* ************************************************************************** */

CC = gcc
FLAGS = -Wall -Wextra -Werror
NASM = nasm -fmacho64

NAME = libasm.a
HEADER = libasm.h

TEST_DIR = test/
TEST_FILE = main.c

SRC_DIR = srcs/
SRC = ft_strlen.s

OBJECTS = $(SRC:.s=.o)

all:$(NAME)

%.o: %.s $(HEADER)
	$(NASM) -I . -s $< -o $@

$(NAME): $(SRC_DIR)$(OBJECTS)
	ar rc $(NAME) $?
	ranlib $(NAME)

clean:
	rm -f $(SRC_DIR)$(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all

test:
	$(CC) $(FLAGS) -L. -lasm $(TEST_DIR)$(TEST_FILE)
	./a.out
	@rm -rf a.out

.PHONY: all clean fclean re test