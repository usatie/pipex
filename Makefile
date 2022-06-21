# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: susami </var/mail/susami>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/21 11:23:06 by susami            #+#    #+#              #
#    Updated: 2022/06/21 16:04:48 by susami           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	pjt_name
CFLAGS		=	-Wall -Wextra -Werror
INCLUDES	=	-Iinclude

LIBFTDIR	=	libft
LIBS		=	-L $(LIBFT) -lft

SRCS		=	srcs/main.c
OBJDIR		=	objs
OBJS		=	$(SRCS:%.c=$(OBJDIR)/%.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) $(LIBS) -o $(NAME)

clean:
	$(RM) *.o *.out
	$(RM) -r $(OBJDIR)
	$(MAKE) clean -C $(LIBFTDIR)

fclean: clean
	$(RM) $(NAME)
	$(MAKE) fclean -C $(LIBFTDIR)

re: fclean all
