;; loop 
;; #include<stdio.h>
;; void main()
;; 	{
;;		int i = 0
;;		while(i < 5)
;;		{
;;			printf("Hello Mona %d");
;;		}
;;		i++;
;;----------------------------------------------

section .data
	msg db "Hello Mona ",10,0
section .text
	global main 
	extern printf
main:
	mov eax,0
lp:
	cmp eax,5
	jnl endof

	pusha 
	push msg
	call printf
	add esp,4
	popa

	inc eax
	jmp lp
endof:
	ret
