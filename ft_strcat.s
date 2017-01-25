global _ft_strcat

extern _ft_strlen

;append a copy of s2 at the end of s1 + a terminating '\0'
;rdi = char* s1
;rsi = char* s2
section .text

_ft_strcat:
; check strings
	;first
	cmp rdi, 0
	je null
	;second null
	cmp rsi, 0
	je end
	;second empty
	cmp byte[rsi], 0
	je end
	;strlen(s1)
	call _ft_strlen
	;init rbx
	mov rbx, 0
loop_fill:
	;ckeck i on est a la fin de s2
	cmp byte[rsi+rbx], 0
	je finish
	;on copie
    mov rdx, [rsi+rbx]
    mov [rdi+rax], rdx
    ;on inc les compteurs
    inc rbx
    inc rax
	jmp loop_fill
finish:
	;on ajoute un 0 a la fin
	mov byte[rdi+rax], 0
end:
; return a ptr to the beg of s1
	;re-init s1 compteur
	mov rbx,0
	;valeur de retour
	mov rax,rdi 
	ret
null:
	;return 0
	mov rax, 0
	ret

