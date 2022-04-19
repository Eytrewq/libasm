# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 16:13:22 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 21:11:31 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_strcmp
			section	.text
_ft_strcmp:
			movzx	eax, BYTE [rdi]
			movzx	edx, BYTE [rsi]
			inc		rdi
			inc		rsi
			test	al, al
			je		.return
			cmp		dl, al
			je		_ft_strcmp
.return	  :
			sub		eax, edx
			ret