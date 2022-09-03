section .text

global main
extern printf

; Outside comment

additional_function:
	call printf
	ret

main:
	; Inside comment
	push rbx
	call additional_function
	pop rbx
	ret

section .data
source_code: db "test"