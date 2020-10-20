global _ft_strcpy

section .text

_ft_strcpy:
    xor rbx, rbx
    xor rax, rax
    push rdi            ;скидываю адрес в пул, так как собираюсь менять указатель rdi
    jmp copy
copy:
    mov rbx, [rsi]
    mov [rdi], rbx
    cmp byte [rsi], 0
    je exit
    inc rdi
    inc rsi
    jmp copy
exit:
    pop rax             ;возвращаю адрес начала строки назначения (бывший rdi) со стека в rax
    ret