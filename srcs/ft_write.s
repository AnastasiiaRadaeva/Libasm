global _ft_write
extern ___error


section .text

_ft_write:
     xor rbx, rbx
     xor rax, rax
     mov rax, 0x02000004        ;system call for write
     syscall
     jc error                   ;jc - if CF == 1 => error | CF == 1, if write == -1 (передает в rax число ошибки)
     jmp exit
error:
     mov rbx, rax
     call ___error              ;записывает в rax адрес на ячейку errno
     mov [rax], rbx
     mov rax, -1
     ret
exit:
     ret