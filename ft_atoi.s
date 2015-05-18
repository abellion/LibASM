# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_atoi.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/22 16:33:20 by abellion          #+#    #+#              #
#    Updated: 2015/03/22 16:51:14 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_atoi

_ft_atoi:
	mov rax, 0

	; check rdi
	cmp rdi, 0
	je end

	jmp _negative

_negative:
	cmp byte[rdi], '-'
	jne _loop
	mov r8, 1
	inc rdi
	jmp _loop

_loop:
	cmp byte[rdi], 0
	je _return

	imul rax, 10
	movzx rbx, byte[rdi]
	sub rbx, 48
	add rax, rbx

	inc rdi
	jmp _loop

_return:
	cmp r8, 1
	jne end
	imul rax, -1
	jmp end

end:
	ret
