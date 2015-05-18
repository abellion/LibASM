# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:44 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 15:10:45 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memcpy

_ft_memcpy:
	push rdi
	; put into rcx (counting register) rdx
	mov rcx, rdx
	; move rsi byte to rdi byte while rcx is not nul
	rep movsb

end:
	pop rax
	ret
