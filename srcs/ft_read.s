global _ft_read
extern ___error


section .text

_ft_read:
     xor rbx, rbx
     xor rax, rax
     mov rax, 0x02000003        ;system call for write
     syscall
     jc error                   ;jc - if CF == 1 => error | CF == 1, if write == -1 (передает в erno число ошибки и в rax)
     jmp exit
error:
     mov rbx, rax
     call ___error
     mov [rax], rbx
     mov rax, -1
     ret
exit:
     ret