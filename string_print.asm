section .data 
	msg db "LOW LEVEL LANGUAGE ",10,0
	len equ $-msg
section .text
	global main
	extern printf
main:
	mov edi,msg

	mov al,''
	repnz scasb

	mov edx,edi
	mov esi,msg
	mov edx,esi

	mov eax,4
	mov ebx,1
	mov ecx,msg
	int 0x80
ret
