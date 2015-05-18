# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:11 by abellion          #+#    #+#              #
#    Updated: 2015/03/22 17:22:49 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_bzero

_ft_bzero:
	cmp rdi, 0
	je end
	mov rcx, 0

loop:
	cmp rcx, rsi
	jge end
	mov byte[rdi], 0
	inc rdi
	inc rcx
	jmp loop

end:
	ret
