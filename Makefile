# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/08 21:03:21 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/08 21:05:05 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FILES		=  ft_write ft_strcmp ft_strdup ft_strcpy ft_strlen ft_read
FILES_BONUS =  ft_list_size ft_list_push_front
OBJS		=  $(addsuffix .o,$(FILES))
OBJS_BONUS	=  $(addsuffix .o,$(FILES_BONUS))
NAME		=  libasm.a

all 		: $(NAME)
$(NAME) 	: $(OBJS)
		  		ar rc $(NAME) $(OBJS)
%.o			: %.s
		  		nasm -fmacho64 $<
clean		:
		  		rm -rf $(OBJS) $(OBJS_BONUS)
fclean  	: clean
		  		rm -rf $(NAME)
re			: flean all
bonus		: $(OBJS) $(OBJS_BONUS)
		  		ar rc $(NAME) $(OBJS) $(OBJS_BONUS)
test		: $(NAME)
		  		gcc main.c $(OBJS)
test_bonus	: $(BONUS)
		  		gcc main_bonus.c $(OBJS) $(OBJS_BONUS)
