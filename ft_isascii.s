# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/18 14:34:52 by abellion          #+#    #+#              #
#    Updated: 2015/03/18 15:07:28 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 127
	jle sup
	jmp ret0

sup:
	cmp rdi, 0
	jge ret1
	jmp ret0

ret0:
	mov rax, 0
	ret

ret1:
	mov rax, 1
	ret
