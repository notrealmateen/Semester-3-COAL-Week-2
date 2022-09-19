Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
	mov AL,0FFh 
	add AL,1 
	call ReadInt 
	invoke ExitProcess,0
main endp
end main