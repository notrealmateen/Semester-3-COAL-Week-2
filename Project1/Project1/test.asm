Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc

;This will change aux carry flag and carry flag
	mov AL,0FFh 
	add AL,1 

	;This will change parity flag, overflow flag and zero flag
	mov AL,-128
	add AL,-10 


	;This will change sign flag
	mov cx,0
	sub cx,1 ; SF = 1
	mov ax,7FFFh
	add ax,2


	;This will change parity flag, overflow flag and zero flag
	mov cx,1
	sub cx,1 ; ZF = 1
	mov ax,0FFFFh
	inc ax ; ZF = 1


	;This Program will change almost all the flags 


	invoke ExitProcess,0
main endp
end main