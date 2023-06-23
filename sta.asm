data segment
    buffer1 db -1, 0, 1, 2, 3
    n db ($-buffer1)
    above db 0
    below db 0
    zero db 0
data ends

code segment
    assume cs:code, ds:data
    main proc far
    mov ax, data
    mov ds, ax
    xor ax, ax
    call sta
    mov ax, 4c00h
    int 21h
    sta proc near
    lea bx, buffer1
    mov si, 0
    mov cl, n
for:
    cmp byte ptr [si], 0
    jg  higher
    jl lower
    jz zzero
higher:
    inc above
    jmp decrease
lower:
    inc below
    jmp decrease
zzero:
    inc zero
    jmp decrease
decrease:
    inc si
    dec cl
    jnz for
    ret
sta endp
    main endp
code ends
end main

