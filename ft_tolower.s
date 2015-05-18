# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/18 15:02:36 by abellion          #+#    #+#              #
#    Updated: 2015/03/18 15:06:54 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_tolower

_ft_tolower:
	cmp rdi, 65
	jge inf
	jmp end

inf:
	cmp rdi, 90
	jle retdown
	jmp end

retdown:
	add rdi, 32
	jmp end

end:
	mov rax, rdi
	ret
