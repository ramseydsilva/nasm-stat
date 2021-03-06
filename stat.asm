global main
extern printStat
extern printf

global puts
global printlong

section .data
format: db  "%ld", 10, 0
argc_error: db 'Usage: stat <dir>', 0ah
argc_error_len: equ 18
buff_size: equ 600

section .bss
contents: resb buff_size

section .text

main:
    cmp rdi, 2                      ; argc > 2
    jne usage                       ; show usage and exit

    mov rdi, [rsi+8]                ; align first argc
    call statCall

    jmp exit

statCall:
    mov rax, 4                      ; stat
    mov rsi, contents               ; char buffer
    syscall

    call printStat                  ; print stats

    ret

puts:
    mov rax, 1                      ; write
    mov rdx, rsi                    ; length
    mov rsi, rdi                    ; char buffer
    mov rdi, 1                      ; stdin
    syscall

    ret

printlong:
    mov     rsi, rdi                ; set 2nd parameter (current_number)
    mov     rdi, format             ; set 1st parameter (format)
    call    printf                  ; printf(format, current_number)

    ret

usage:
    mov rdi, argc_error
    mov rsi, argc_error_len
    call puts
    call exit

exit:
    mov rax, 60
    mov rdi, 0
    syscall
