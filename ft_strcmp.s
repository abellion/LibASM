# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 20:14:04 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 21:14:27 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcmp

_ft_strcmp:
	; check RDI and RSI
	cmp rdi, 0
	je _ret0
	cmp rsi, 0
	je _ret0
	jmp _loop

_loop:
	; check if equal or end of string
	movzx r8, byte[rdi]
	movzx r9, byte[rsi]
	cmp r8, r9
	jne _end
	cmp r8, 0
	je _end
	cmp r9, 0
	je _end
	; inc strings
	inc rdi
	inc rsi
	jmp _loop

_end:
	; convert to ascii number and return difference betwen both strings
	movzx rdi, byte[rdi]
	movzx rsi, byte[rsi]
	sub rdi, rsi
	mov rax, rdi
	ret

_ret0:
	mov rax, 0
	ret
