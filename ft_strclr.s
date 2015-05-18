# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strclr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/22 16:12:03 by abellion          #+#    #+#              #
#    Updated: 2015/03/22 16:32:54 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strclr
	extern _ft_strlen
	extern _ft_bzero

_ft_strclr:
	; check rdi
	cmp rdi, 0
	je end

	; get rdi length
	push rdi
	call _ft_strlen
	pop rdi

	; call bzero with rdi length
	mov rsi, rax
	call _ft_bzero

	ret

end:
	mov rax, 0
	ret
