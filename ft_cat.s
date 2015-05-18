# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abellion <abellion@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/20 15:10:17 by abellion          #+#    #+#              #
#    Updated: 2015/03/20 15:29:19 by abellion         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define SYSCALL_NB(nb)	0x2000000 | nb
%define READ			3
%define WRITE			4

section .data
	buffer: times 256 db 0
	buffsize: db 10

section .text
	global _ft_cat
	extern _ft_strlen
	extern _ft_memset

_ft_cat:
	push rdi
	jmp _read

; using rax data of read return value
_loop:
	cmp rax, 0
	jle end
	jmp _display

_display:
	; buffer length
	lea rdi, [rel buffer]
	call _ft_strlen
	; write syscall
	mov rdi, 1
	lea rsi, [rel buffer]
	mov rdx, rax
	mov rax, SYSCALL_NB(WRITE)
	syscall
	jmp _read

; using first stack data for filedes
_read:
	; set the buffer
	lea rdi, [rel buffer]
	mov rsi, 0
	mov rdx, [rel buffsize]
	call _ft_memset
	; call read
	pop rdi
	lea rsi, [rel buffer]
	mov rdx, [rel buffsize]
	mov rax, SYSCALL_NB(READ)
	syscall
	push rdi
	jc end
	jmp _loop

end:
	pop rdi
	ret
