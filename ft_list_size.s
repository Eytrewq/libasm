# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_size.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/07 22:55:01 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 23:25:19 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_list_size
			section	.text
_ft_list_size:	
                xor     rax, rax
                cmp     rdi, 0
                je      .return
.increment     :
                inc     rax
.loop          :
                mov     rdi, [rdi + 8]
                cmp     rdi, 0
                jne     .increment
.return       :
                ret
