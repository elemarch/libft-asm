extern _ft_isupper
global _ft_tolower

section .text

_ft_tolower:
	call _ft_isupper
	CMP rax,1
	JNE return
	ADD rdi,32
return:
	MOV rax,rdi
	ret