global _ft_memcpy

;copy len bytes from src to dst
;rdi = dst, rsi = src, rdx = len

;[push]on the stack
;[pop] remove from stack
;[rep]eat
;[movsb] move string byte
;[cld] clear string flags
;[mov]e

section .text

_ft_memcpy:
	;push rdi on the stack
	push rdi
	;rep use rcx, copy the len to it
	mov rcx,rdx
	;clear string flag to inc rsi & rdi in movsb
	cld
	;rep, repeat while rcx != 0
	rep movsb
	pop rdi
	ret