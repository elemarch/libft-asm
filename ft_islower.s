global _ft_islower

section .text

_ft_islower:
	CMP rdi,'a'
	JL false
	CMP rdi,'z'
	JLE true
false:
	MOV rax,0
	ret
true:
	MOV rax,1
	ret