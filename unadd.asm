data segment
    x dw 00FFH
    y dw 00FFH
    z dw ?
data ends
;z = (y + 5) * x + 20
code segment
    assume cs:code, ds:data
    main proc far
    mov ax, data
    mov ds, ax
    xor ax, ax

    mov ax, y
    add ax, 5
    mov bx, x
    mul bx
    add ax, 20
    mov ax, 4c00h
    int 21h
    main endp
code ends
end main