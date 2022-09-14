section .data
	msg db "Enter NO : %d",10,0
section .text
	global main
	extern printf
main:
	mov ecx,5
	mov eax,1
lp:
	mul ecx      ;;i=ecx
	cmp ecx,1
	jz endof

	dec ecx
	jmp lp
endof:
	push eax
	push msg
	call printf
	add esp,8
ret

