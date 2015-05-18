# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strnew.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 19:09:02 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 19:19:32 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strnew
	extern _ft_bzero
	extern _malloc

_ft_strnew:
	push rdi

	; malloc the string of size + 1 * 8
	inc rdi
	imul rdi, 8
	push rdi
	call _malloc
	pop rdi

	; bzero it and return it
	mov rdi, rax
	pop rsi
	call _ft_bzero
	ret
