global _ft_isdigit

section .text

_ft_isdigit:
	CMP rdi,'0'
	JL false
	CMP rdi,'9'
	JLE true
false:
	MOV rax,0
	ret
true:
	MOV rax,1
	ret