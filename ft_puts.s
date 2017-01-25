global _ft_puts

extern _ft_strlen

;[call]s a function
;[cmp] compares
;[je] jump if equal
;[lea] link pointers (sort of)
;[mov]e
;syscall write 0x2000004 (rax)
infos:
.null db "(null)", 10, 0
.nl db 0xA

_ft_puts:
; no rdi given, stahp
	cmp rdi,0
	je nullptr
; write string
	;rsi = pointer to the begining of the string
	lea rsi,[rdi]
	;get the strlen
	call _ft_strlen
	;set rdi = stdout
	mov rdi,1
	;set rdx to strlen, needed for writing later
	mov rdx,rax
	mov rax,0x2000004
	;syscall write
	syscall
; write trailing \n
	;re-init rdi
	mov rdi,1
	;strlen = 1
	mov rdx,1
	;syscall write
	mov rax,0x2000004
	lea rsi, [rel infos.nl]
	syscall
	ret
nullptr:
	lea rsi, [rel infos.null]
	mov rdi,1
	mov rdx,7
	mov rax, 0x2000004
	syscall
	ret
