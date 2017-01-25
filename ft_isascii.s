global _ft_isascii

section .text

_ft_isascii:
	CMP rdi,0
	JL false
	CMP rdi,127
	JLE true

false:
	MOV rax,0
	ret

true:
	MOV rax,1
	ret
