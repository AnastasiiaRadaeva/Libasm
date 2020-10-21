global _ft_strlen

section .text

_ft_strlen:
     xor rcx, rcx                ;int i = 0
     jmp count
count:
     cmp [rdi + rcx], byte 0    ;if (*str == '\0')
     je exit                    ;if (*str == '\0') => return i
     inc rcx                    ;i++;
     jmp count
exit:
     mov rax, rcx
     ret