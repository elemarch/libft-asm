global _ft_ispunct

section .text

_ft_ispunct:
	cmp rdi,33
	jl false
	cmp rdi,47
	jle true
	cmp rdi,58
	jl false
	cmp rdi,64
	jle true
	cmp rdi,91
	jl false
	cmp rdi,96
	jle true
	cmp rdi,123
	jl false
	cmp rdi,126
	jle true

false:
	mov rax,0
	ret

true:
	mov rax,1
	ret