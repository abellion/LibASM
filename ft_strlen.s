# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:11:13 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 17:36:35 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	; init rcx counter and put nul terminated char in rax
	mov rcx, -1
	mov rax, 0
	cld
	repne scasb

	; convert rcx to positive and decrement it
	not rcx
	dec rcx
	jmp end

end:
	mov rax, rcx
	ret
