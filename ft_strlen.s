# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 16:13:16 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 21:15:09 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_strlen
			section	.text
_ft_strlen:	
			xor		rax, rax
			jmp		.increment
.loop	  :
			inc		rax
.increment :
			cmp		BYTE [rdi + rax], 0
			jne		.loop
			ret
