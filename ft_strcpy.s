# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 18:10:51 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 20:46:46 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_strcpy
			section	.text
_ft_strcpy:
			xor 	rax, rax
			xor		rcx, rcx
			jmp		.loop
.increment :
			inc		rcx
.loop	  :
			mov		dl, BYTE [rsi + rcx]
			mov		BYTE [rdi + rcx], dl
			cmp		dl, 0
			jne		.increment
.return	  :
			mov		rax, rdi
			ret
