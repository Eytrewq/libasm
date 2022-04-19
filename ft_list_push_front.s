# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_push_front.s                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebiscara <ebiscara@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/07 23:04:33 by ebiscara          #+#    #+#              #
#    Updated: 2020/02/07 23:23:45 by ebiscara         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

			global	_ft_list_push_front
            extern  _malloc
			section	.text
_ft_list_push_front :
                    push    rdi
                    push    rsi
                    mov     rdi, 16
                    call    _malloc
                    test    rax, rax
                    je      .return
                    pop     rsi
                    mov     [rax], rsi
                    pop     rdi
                    mov     rdx, [rdi]
                    mov     [rax + 8], rdx
                    mov     [rdi], rax
.return             :
                    ret
