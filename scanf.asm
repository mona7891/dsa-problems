section .data
	msg db "Enter No:",0
	input db "%d",0
section .bss
	n resd 1
section .text
	global main
	extern printf,scanf
main:
	pusha
	push msg
	call printf
	add esp,4
	popa

	pusha
	push n
	push input
	call scanf
	add esp,8
	popa

	pusha
	push dword[n]
	push input
	add esp,8
	popa

ret 	
