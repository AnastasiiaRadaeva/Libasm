global _ft_strdup
extern ___error
extern _malloc
extern _ft_strlen
extern _ft_strcpy

section .text

_ft_strdup:
    xor rax, rax
    cmp rdi, 0
    je exit
    push rdi
    call _ft_strlen
    mov rdi, rax
    inc rdi
    call _malloc
    cmp rax, 0
    je error
    jmp copy
copy:
    pop rsi
    mov rdi, rax
    call _ft_strcpy
    jmp exit
error:
    mov rbx, rax
    call ___error
    mov [rax], rbx
    mov rax, -1
    ret
exit:
    ret

