# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strrchr.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/21 19:21:44 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 20:07:00 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strrchr
	extern _ft_strchr

_ft_strrchr:
	; check str
	cmp rdi, 0
	je _ret0

	; put RDI at his end
	mov rcx, -1
	mov rax, 0
	cld
	repne scasb
	dec rdi

	; set rcx with rdi length
	not rcx
	dec rcx

_loop:
	cmp rcx, 0
	jle _ret0

	; save all useful registers, call strchr and then restore them
	push rcx
	push rdi
	call _ft_strchr
	cmp rax, 0
	jne _ret_char
	pop rdi
	pop rcx

	dec rdi
	dec rcx
	jmp _loop

_ret_char:
	pop rax
	pop rcx
	ret

_ret0:
	mov rax, 0
	ret
