global _ft_cat

;rbp : stack base pointer
;rsp : base pointer
;rdx : buffer size
;0x2000003 : syscall write
_ft_cat:
	; save base pointer
	push rbp
	; place base pointer on stack
	mov rbp, rsp
	; align stack to keep 16 bytes for buffering
	sub rsp,16
	; save function parameter (int fd)
	push rdi
	cmp rsi,0
	jl end

read:
	; 1st param - get fd from stack
	mov rdi,[rsp]
	lea rsi,[rbp-16]

	; 3rd param - buffer size
	mov rdx,16
	mov rax, 0x2000003 ;read
	syscall
	jc end
	; if read return <= 0 jump to end
	cmp rax,0
	jle end

write:
	; save read return
	push rax
	; 1st param
	mov rdi,1
	lea rsi, [rbp-16]

	; 3rd param - read return
	mov rdx,rax
	mov rax, 0x2000004 ;write
	syscall
	pop rax
	; if read return < 16 then it is finished
	cmp rax,0
	jne read

end:
	; restore stack and base pointers
	mov rsp,rbp
	pop rbp
	; return
	ret