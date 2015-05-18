# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:24 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 15:10:25 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalnum
	extern _ft_isalpha
	extern _ft_isdigit

_ft_isalnum:
	call _ft_isalpha
	mov r8, rax
	call _ft_isdigit
	mov r9, rax
	cmp r8, 1
	je ret1
	cmp r9, 1
	je ret1
	jmp ret0

ret0:
	mov rax, 0
	ret

ret1:
	mov rax, 1
	ret
