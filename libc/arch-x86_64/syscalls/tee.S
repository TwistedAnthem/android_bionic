/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(tee)
    movq    %rcx, %r10
    movl    $__NR_tee, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno_internal
1:
    ret
END(tee)
