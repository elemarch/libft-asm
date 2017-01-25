global _ft_bzero

section .text

;set x bytes at o in given string
;rdi = char*
;rsi = size
;rax & ri are registers, used to stock the values
_ft_bzero:
	cmp rsi, 0
	je return
	;on copie les valeurs.
    mov rax, rdi
    mov rbx, rsi

loop:
	;on teste si fin de str
	cmp rbx,0
	je return
	;on change en 0
	mov byte[rax],0
	;on incremente/decremente
	inc rax
	dec rbx
jmp loop
return:
	ret