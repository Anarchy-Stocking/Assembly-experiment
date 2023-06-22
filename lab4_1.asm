data segment
    id  db  '2196114661'
	num  dw  0
data ends
code segment
    assume cs:code, ds:data
    main    proc  far
        mov   ax, data
        mov   ds, ax
		
		;保存旧的中断向量
		mov al,1ch
		mov ah,35h			;取中断向量时预置AH=35H
		int 21h				;执行
		push es
		push bx
		;ES:BX = 中断向量(程序入口地址)
		
		;设置新的中断向量
		push ds
		mov dx,offset inter
		mov ax,seg inter	;计算段基址
		mov ds,ax			
		mov al,1ch			;AL = 中断类型号
		mov ah,25h			;设置中断向量时预置AH=25H
		int 21h				;执行
		pop ds				;把ds pop到ds中
		;DS:DX=中断向量(程序入口地址)

	input:
		mov ah,01h
		int 21h
		cmp al,51h
		jnz input
		
		;回车换行
		mov dl,0dh
		mov ah,2
		int 21h
		mov dl,0ah
		mov ah,2
		int 21h
		
		mov bx,num
		mov ch,4
		mov cl,4
	rotate:
		rol bx,cl
		mov al,bl
		and al,0fh
		add al,30h
		cmp al,3ah
		jl  print
		add al,7h
	print:
		mov dl,al
		mov ah,2
		int 21h
		dec ch
		jnz rotate
		
		mov dl,'h'
		mov ah,2
		int 21h
		
		;恢复旧的中断向量
		pop dx
		pop ds
		mov al,1ch
		mov ah,25h
		int 21h
		
        mov   ax, 4c00h
        int   21h
    main    endp
	;中断程序
	inter  proc  near
		inc num
	    iret				;中断返回
	inter  endp
code ends
end main 