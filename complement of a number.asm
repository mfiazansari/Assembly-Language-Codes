[org 0x0100]

mov ax,5		
NOT ax				; to find 1s complement of 5 i,e, 101 's complement will be 010 
add ax,1			; 2s complement of 5 will be obtained by adding 1 to its 1s complement

mov ax,0x4c00
int 0x21