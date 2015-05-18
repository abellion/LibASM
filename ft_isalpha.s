# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:28 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 15:18:04 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalpha

_ft_isalpha:
	cmp rdi, 90
	jle upper
	cmp rdi, 122
	jle smaller
	jmp ret0

smaller:
	cmp rdi, 97
	jge ret1
	jmp ret0

upper:
	cmp rdi, 65
	jge ret1
	jmp ret0

ret0:
	mov rax, 0
	ret

ret1:
	mov rax, 1
	ret
