extern _ft_isalpha
extern _ft_isdigit

global _ft_isalnum

section .text

_ft_isalnum:
	call _ft_isdigit
	cmp rax,1
	je true
	call _ft_isalpha
	cmp rax,1
	je true

false:
	mov rax,0
	ret

true:
	ret