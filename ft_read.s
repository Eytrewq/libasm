# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 16:13:11 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/06 17:02:53 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_read
			section	.text
_ft_read:	
			mov		rax, 0x02000003
			syscall
			jc		error
			ret
error	 :
			mov		rax, -1
			ret
