

global swap
global alternate_sum
global strLen
global strLen_medioFeo

swap:
    push rsp
    mov rbp, rsp
    push r12
    push r13

    xor r12, r12
    xor r13,r13

    mov r12, [rdi]
    mov r13, [rsi]

    mov [rdi], r13
    mov [rsi], r13

    pop r13
    pop r12
    pop rsp
    ret

alternate_sum:
    push rbp
    mov rbp, rsp

    sub edi, esi
    add edi, edx
    sub edi, ecx
    

    mov eax, edi
    pop rbp
    ret

strLen_medioFeo:
    push rbp
    mov rbp, rsp
    push r12
    push r13

    xor r12, r12; va a ser mi indice
    xor r13, r13; va a ser mi contador

    .loop:
        mov r12b, [rdi+r13]
        cmp  r12b, 0
        je .fin
        inc r13
        jmp .loop

    .fin:
        xor rax, rax 
        mov rax, r13
        pop r13
        pop r12
        pop rbp
        ret 
    
strLen:
    push rbp
    mov rbp, rsp
    xor rcx, rcx

    .loop:
        cmp byte [rdi+rcx],0
        je .fin
        inc rcx
        jmp .loop

    .fin:
        xor rax, rax 
        mov rax, rcx
        pop rbp
        ret 
    

