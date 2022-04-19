# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 16:13:42 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 22:49:18 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_write
			section	.text
_ft_write:	
			mov		rax, 0x02000004
			syscall
			jc		.error
			ret
.error	 :
			mov		rax, -1
			ret
