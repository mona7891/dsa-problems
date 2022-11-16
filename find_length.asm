section .data
	print db "This is a string",0
	scan db "Length is %d",10,0
section .text
	global main
	extern printf,scanf
main:
	xor ecx,ecx
	mov edx,print
lp:
	cmp byte[edx],0         ;;lenght for(i=0;str[i]!='\0'; i++)
	jz endof
	
	inc ecx
	inc edx
	jmp lp
endof:
	pusha
	push ecx
	push scan
	call printf
	add esp,8
	popa
ret

	
