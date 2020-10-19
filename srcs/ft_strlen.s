global _ft_strlen

section .text

_ft_strlen:
     mov rcx, -1
     jmp count
count:
     inc rcx
     cmp [rdi + rcx], byte 0 
     jne count
     jmp exit
exit:
     mov rax, rcx
     ret