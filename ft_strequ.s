# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strequ.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 19:00:07 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 19:08:31 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strequ

_ft_strequ:
	cmp rdi, rsi
	jne _ret0
	cmp byte[rdi], 0
	je _ret1
	inc rdi
	inc rsi
	jmp _ft_strequ

_ret1:
	mov rax, 1
	ret

_ret0:
	mov rax, 0
	ret
