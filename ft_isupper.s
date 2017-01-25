global _ft_isupper

section .text

_ft_isupper:
	CMP rdi,'A'
	JL false
	CMP rdi,'Z'
	JLE true
false:
	MOV rax,0
	ret
true:
	MOV rax,1
	ret