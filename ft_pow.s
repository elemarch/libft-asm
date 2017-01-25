global _ft_pow


;rdi = n
;rsi = p
_ft_pow:
	mov rax,rdi
	cmp rsi,0
	jle null
loop:
	imul rax,rdi
	dec rsi
	cmp rsi,1
	je end
	jmp loop
null:
	mov rax,1
end:
	ret