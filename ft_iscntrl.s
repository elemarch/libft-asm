global _ft_iscntrl

section .text

_ft_iscntrl:
	cmp rdi,0
	jl false
	cmp rdi,31
	jle true
	cmp rdi,127
	je true

false:
	MOV rax,0
	ret

true:
	MOV rax,1
	ret