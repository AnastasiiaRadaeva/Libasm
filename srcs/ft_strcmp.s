global _ft_strcmp

section .text

_ft_strcmp:
     xor rax, rax
     xor rbx, rbx
     jmp comparison
comparison:
     mov al, byte [rdi]     ;al = *rdi тк только 1 байт занимает символ
     mov bl, byte [rsi]
     cmp al, 0
     je exit
     cmp bl, 0
     je exit
     cmp al, bl
     jne exit
     inc rdi
     inc rsi
     jmp comparison
exit:
     movzx rax, al          ;movzx перемещвет то, что показали в младший байт, остальное зануляет
     movzx rbx, bl
     sub rax, rbx
     ret