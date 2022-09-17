section .data 
	msg db "Sakshi ",0
	len equ $-msg
section .bss
	msg1 resb len 
section .text
	global main
	extern printf,puts
main:
	mov ebx,msg               ;;ebx = str1
	mov edx,msg1              ;;ecx = str2

	add ebx,len              
	
	dec ebx
	dec ebx
	
	xor ecx,ecx        

	inc ecx
	inc ecx
lp :
	mov al,byte[ebx]
	mov byte[edx],al

	cmp ecx,len
	
	jnl endof                ;;not equal 
	inc ecx
	
	dec ebx
	inc edx
	jmp lp
endof:
	push msg1             ;;print msg1
	call puts
	add esp,4

	push msg             ;;print msg
	call puts
	add esp,4
ret

