; Outside comment
global _main
extern _open
extern _close
extern _access
extern _printf
extern _dprintf
extern _sprintf
extern _system
section .text

open_file:
push rbx
call make_filename
mov rdi, filename
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
call _dprintf
pop rbx
ret

main

section .data
name:
db "Sully_%d.s", 0
code:
db "; Outside comment"