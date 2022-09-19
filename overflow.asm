Include Irvine32.inc
.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.code
main proc
	mov AL,-128
	add AL,-10 
	call ReadInt 
	invoke ExitProcess,0
main endp
end main