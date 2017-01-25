extern _ft_islower
global _ft_toupper

section .text

_ft_toupper:
	call _ft_islower
	CMP rax,1
	JNE return
	SUB rdi,32
return:
	MOV rax,rdi
	ret