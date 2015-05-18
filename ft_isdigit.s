# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:35 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 15:10:36 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, 48
	jge and
	jmp ret0

and:
	cmp rdi, 57
	jle ret1
	jmp ret0

ret0:
	mov rax, 0
	ret

ret1:
	mov rax, 1
	ret
