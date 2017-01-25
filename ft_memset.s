global _ft_memset

;set len bytes of value val in data
;rdi = data, rsi = val, rdx = len

;[stosb] store string byte. uses rax as value

section .text

_ft_memset:
	push rdi
	mov rcx, rdx
	mov rax,rsi
	cld
	rep stosb
	pop rdi
	ret