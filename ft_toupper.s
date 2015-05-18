# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/18 14:39:12 by abellion          #+#    #+#              #
#    Updated: 2015/03/18 14:59:31 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper

_ft_toupper:
	cmp rdi, 97
	jge inf
	jmp end

inf:
	cmp rdi, 122
	jle retup
	jmp end

retup:
	sub rdi, 32
	jmp end

end:
	mov rax, rdi
	ret
