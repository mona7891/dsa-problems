section .data
	print db "Enter Elements :",0
	scan db "%d",0

	printArr db "Max element are : %d ",10,0
section .bss
	array resd 10
	n resd 1
section .text
	global main
	extern printf,scanf
main:
	pusha
	push print
	call printf
	add esp,4
	popa

	pusha
	push n
	push scan
	call scanf
	add esp,8
	popa

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

	xor ecx,ecx
	xor esi,dword[array]
lp1:
	mov ebx,array
	mov eax,4

	mul ecx
	add ebx,eax

	cmp dword[ebx],esi
	jng nonupdate 

	mov esi,dword[ebx]
nonupdate:
	inc ecx
	cmp ecx,dword[n]
	jl lp1

	pusha
	push esi
	push printArr
	call printf
	add esp,8
	popa
ret



