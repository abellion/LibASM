# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/18 14:38:37 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 16:16:20 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 126
	jle sup
	jmp ret0

sup:
	cmp rdi, 32
	jge ret1
	jmp ret0

ret0:
	mov rax, 0
	ret

ret1:
	mov rax, 1
	ret
