global _ft_strlen

section .text

;[push]on the stack
;[pop] remove from stack
;[sub]stract
;[dec]rement
;[not] revert
;[cld] clear string flags
;[repne] repeat until rcx not 0
;[scasb] scan string byte per byte, use rdi value
;[mov]e

_ft_strlen:
	;push rdi on the stack
	push rdi
	;reset rcx
	sub rcx,rcx
	;invert rcx
	not rcx
	;reset al
	sub al,al
	;clear string flag
	cld
	;repne = repeat until rcx is not 0
	;scasb = scan string byte per byte, use rdi value
	repne scasb
	;revet rcx
	not rcx
	;remove trailing \0
	dec rcx
	;set return value to char count
	mov rax,rcx
	;remove rdi from the stack
	pop rdi
	ret