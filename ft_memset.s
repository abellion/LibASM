# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:48 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 15:10:49 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset

_ft_memset:
	push rdi
	; init rax with rsi
	mov rax, rsi
	; init rcx counter with rdx
	mov rcx, rdx
	; move rax byte to rdi byte
	rep stosb

end:
	pop rax
	ret
