section .data
	print db "Enter how many array :",0
	scan db "%d",0

	printArr db "Addition of array %d:",10,0
section .bss
	n resd 1
	array resd 10
section .text
	global main
	extern printf,scanf
main:

	push print
	call printf
	add esp,4


	push n
	push scan
	call scanf
	add esp,8

	xor ecx,ecx
lp:
	mov ebx,array
	mov eax,4

	mul ecx
	add ebx,eax

	pusha
	push ebx
	push scan
	call scanf
	add esp,8
	popa

	inc ecx
	cmp ecx,dword[n] 
	jl lp

	xor ecx,ecx                 ;;add 
	xor esi,esi
lp1:
	mov ebx,array
	mov eax,4

	mul ecx
	add ebx,eax

	add esi,dword[ebx]

	inc ecx
	cmp ecx,dword[n]
	jl lp1

endof:
	pusha 
	push esi
	push printArr
	call printf
	add esp,8
	popa
ret





	 
