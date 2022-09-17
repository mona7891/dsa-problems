section .data
	msg db "Sakshi more",0
	len equ $-msg
	copy db "%d",10,0
section .bss
	msg1 resb len
section .text
	global main
	extern printf,puts
main:
	mov ecx,msg            ;;str1[10] ="sakshi"
	mov edx,msg1           ;;str2[12];
lp:
	mov al,byte[ecx]       ;;strcpy(str2,str1)
	mov byte[edx],al       ;; 

	cmp byte[ecx],0

	jz endof             

	inc ecx                ;;str1++
	inc edx                ;;str2++
	jmp lp
endof:
	push msg1            ;;print
	call puts
	add esp,4
ret
