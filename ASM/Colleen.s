; Outside comment
global _main
extern _printf
section .text

print:
	push rbx
	mov rdi, code
	mov rsi, code
	mov rdx, 10
	mov rcx, 34
	mov r8, 9
	call _printf
	pop rbx
	ret

_main:
	push rbx
	; Inside comment
	call print
	pop rbx
	ret

section .data
code: db "; Outside comment%2$cglobal _main%2$cextern _printf%2$csection .text%2$c%2$cprint:%2$c%4$cpush rbx%2$c%4$cmov rdi, code%2$c%4$cmov rsi, code%2$c%4$cmov rdx, 10%2$c%4$cmov rcx, 34%2$c%4$cmov r8, 9%2$c%4$ccall _printf%2$c%4$cpop rbx%2$c%4$cret%2$c%2$c_main:%2$c%4$cpush rbx%2$c%4$c; Inside comment%2$c%4$ccall print%2$c%4$cpop rbx%2$c%4$cret%2$c%2$csection .data%2$ccode: db %3$c%1$s%3$c%2$c"
