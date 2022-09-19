Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
	mov cx,0
	sub cx,1 ; SF = 1
	mov ax,7FFFh
	add ax,2
	invoke ExitProcess,0
main endp
end main
