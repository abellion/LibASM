# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:11:03 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 19:34:14 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcat
	extern _ft_strlen
	extern _ft_memcpy

_ft_strcat:
	push rdi
	; check s1 & s2 value
	cmp rdi, 0
	je end
	cmp rsi, 0
	je end

	; put rdi at his end
	mov rcx, -1
	mov rax, 0
	repne scasb
	dec rdi

	; get rsi length
	push rdi
	mov rdi, rsi
	call _ft_strlen
	pop rdi

	; proceed
	mov rdx, rax
	call _ft_memcpy

end:
	pop rax
	ret
