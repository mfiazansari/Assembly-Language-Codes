[org 0x0100]
	
clrScr:
	mov ax,0xb800
	mov es,ax
	mov di,0
	mov ax,0x0720
	loop1:
		mov word[es:di],ax
		add di,2
		cmp di,4000
		jne loop1
		
mov ax,0xb800
mov es,ax
mov di,0
mov cx,[length]
mov si,name
mov ah,0x07

loop2:
	mov al,[si]
	add si,1
	cmp al,'a'
	je print
	cmp al,'i'
	je print
	cmp al,'e'
	je print
	cmp al,'o'
	je print
	cmp al,'u'
	je print
	je print
	sub cx,1
	cmp cx,0
	jne loop2
	jmp exit
	
print:
	mov word[es:di],ax
	add di,2
	sub cx,1
	cmp cx,0
	jne loop2
	
exit:
	mov ax,0x4c00
	int 0x21

name: db 'noman fiaz aneeq sajad usama asad'
length: dw 33
