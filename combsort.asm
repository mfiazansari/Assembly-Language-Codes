  [org 0x0100]
mov ax,[length]
l1:	mov si,10 
	mov bx,13
	mul si
	div bx
	mov [gap],ax
	mov bx,[length]
	mov si,[gap]
	mov [counter],bx
	sub [counter],si
	shl si,1
	mov bx,0
	mov cx,0 
l2: 	mov dx,[array+bx]
		cmp dx,[length+si]
		jbe noswap
		xchg dx,[array+si]
		mov [array+bx],dx
noswap : 	add bx,2
		add si,2
		add cx,1
		cmp cx,[counter]  
		jne l2
		cmp ax,1
		jne l1
	mov ax,0x4C00
	int 0x21
array   : dw 90,6,1,38,31,75,11,15,11,2
length  : dw 10
gap     : dw 0
counter : db 0
