# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 20:56:05 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 21:31:12 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_strdup
			extern	_ft_strcpy
			extern	_ft_strlen
			extern	_malloc
			section	.text
_ft_strdup:
			push	rdi
			call	_ft_strlen
			mov		rdi, rax
			call	_malloc
			cmp		rax, 0
			je		.error
			pop		rsi
			mov		rdi, rax
			call	_ft_strcpy
.error	  :
			ret	