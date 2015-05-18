# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strchr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 17:45:39 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 19:21:37 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strchr
	extern _ft_strlen

_ft_strchr:
	; check str
	cmp rdi, 0
	je _ret0

	; get RDI length
	push rdi
	call _ft_strlen
	pop rdi

	; init RCX counter and RAX stop condition
	mov rcx, rax
	inc rcx
	mov rax, rsi
	repne scasb

	; check if RSI is find or not
	cmp rcx, 0
	je _ret0

	; ret the previous rdi char
	dec rdi
	mov rax, rdi
	ret

_ret0:
	mov rax, 0
	ret
