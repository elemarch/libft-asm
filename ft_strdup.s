global _ft_strdup

;malloc a new str and copy the content of s1 in it
extern _malloc

;rdi = char* s1
;rbp : stack base pointer
;rsp : base pointer
;rcx : used to pass 4th argument to functions

_ft_strdup:
; Setup stack shit
    ;save base pointer
    push rbp
    ;place base pointer on stack
    mov rbp, rsp
    ;align stack to keep 16 bytes for buffering
    sub rsp, 16

; check input
    cmp rdi, 0
    je fail
    ;save pointer to use for strlen
    mov rcx,rdi
    ;push rdi on the stack
    push rdi
;
; get len in rax, not using strlen coz it fuck up things
strlen_loop:
    inc rcx
    ;simple strlen, if *rcx != '\0', keep going
    cmp byte[rcx],0
    jne strlen_loop
    ;substract rdi to rcx, gives us the strlen
    sub rcx,rdi
; malloc
    ;set rdi to strlen for malloc
    mov rdi,rcx
    ;push rcx on the stack
    push rcx
    ;malloc the new str to save it from malloc tempering shit
    call _malloc
    ;return null on malloc fail
    jc fail
    ;pop rcx from the stack
    pop rcx
    ;pop rsi, rsi = base rdi since we pushed rdi in the begining
    pop rsi
    ;set rdi to a pointer to the new malloc
    mov rdi,rax

; strdup
    ;movsb, copy rcx bytes from rsi to rdi
    rep movsb
    jmp end

fail:
    mov rax, 0

end:
    mov rsp, rbp    ;restore stack and base pointers
    pop rbp
    ret
