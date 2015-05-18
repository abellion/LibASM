# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/18 15:26:49 by abellion          #+#    #+#              #
#    Updated: 2015/03/21 18:28:08 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define SYSCALL(nb)		0x2000000 | nb
%define WRITE			4
%define STDOUT			1

section .data
	newl: db 0x0a
	str_null: db "(null)", 10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	; check RDI
	cmp rdi, 0
	je _put_null
	jmp _put_string

_put_string:
	; get string length
	push rdi
	call _ft_strlen
	; write the string
	mov rdi, STDOUT
	pop rsi
	mov rdx, rax
	mov rax, SYSCALL(WRITE)
	syscall
	jmp _put_newl

_put_null:
	mov rdi, STDOUT
	lea rsi, [rel str_null]
	mov rdx, 6
	mov rax, SYSCALL(WRITE)
	syscall
	jmp _put_newl

_put_newl:
	; wite the newline
	lea rsi, [rel newl]
	mov rdx, STDOUT
	mov rax, SYSCALL(WRITE)
	syscall
	; check write ret
	cmp rax, -1
	je ret_error
	jmp ret_success

ret_success:
	mov rax, 1
	ret

ret_error:
	mov rax, -1
	ret
