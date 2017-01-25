extern _ft_islower
extern _ft_isupper

global _ft_isalpha

section .text

_ft_isalpha:
	call _ft_islower
	CMP rax,1
	JE true
	call _ft_isupper
	CMP rax,1
	JE true
false:
	MOV rax,0
	ret
true:
	ret