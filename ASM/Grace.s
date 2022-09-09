; Outside comment
global _main
extern _open
extern _close
extern _dprintf
section .text

%macro main 0
_main:
	push rbx
	call open_file
	mov rdi, rax
	call write_file
	mov eax, 0
	pop rbx
	ret
%endmacro

open_file:
	push rbx
	mov rdi, name
	mov rsi, 0x601
	mov rdx, 0x1a4
	call _open
	pop rbx
	ret

write_file:
	push rbx
	mov rsi, code
	mov rdx, code
	mov rcx, 10
	mov r8, 34
	mov r9, 9
	call _dprintf
	pop rbx
	ret

main

section .data
name:
db "Grace_kid.s", 0
code:
db "; Outside comment%2$cglobal _main%2$cextern _open%2$cextern _close%2$cextern _dprintf%2$csection .text%2$c%2$c%%macro main 0%2$c_main:%2$c%4$cpush rbx%2$c%4$ccall open_file%2$c%4$cmov rdi, rax%2$c%4$ccall write_file%2$c%4$cmov eax, 0%2$c%4$cpop rbx%2$c%4$cret%2$c%%endmacro%2$c%2$copen_file:%2$c%4$cpush rbx%2$c%4$cmov rdi, name%2$c%4$cmov rsi, 0x601%2$c%4$cmov rdx, 0x1a4%2$c%4$ccall _open%2$c%4$cpop rbx%2$c%4$cret%2$c%2$cwrite_file:%2$c%4$cpush rbx%2$c%4$cmov rsi, code%2$c%4$cmov rdx, code%2$c%4$cmov rcx, 10%2$c%4$cmov r8, 34%2$c%4$cmov r9, 9%2$c%4$ccall _dprintf%2$c%4$cpop rbx%2$c%4$cret%2$c%2$cmain%2$c%2$csection .data%2$cname:%2$cdb %3$cGrace_kid.s%3$c, 0%2$ccode:%2$cdb %3$c%1$s%3$c%2$c"
