global _ft_isprint

section .text

_ft_isprint:
	CMP rdi,32
	JL false
	CMP rdi,126
	JLE true
false:
	MOV rax,0
	ret
true:
	MOV rax,1
	ret