Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
	mov cx,1
	sub cx,1 ; ZF = 1
	mov ax,0FFFFh
	inc ax ; ZF = 1
	call ReadInt 
	invoke ExitProcess,0
main endp
end main