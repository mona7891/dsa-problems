section .data
	print db "Enter how many elements :",0
	scan db "%d",0

	printArr db "Enter element in the aaray :",10,0
	scanArr db "%d ",10,0
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

	pusha 
	push printArr
	call printf
	add esp,4
	popa

	xor ecx,ecx
lp1:
	mov ebx,array
	mov eax,4

	mul ecx
	add ebx,eax

	pusha 
	push dword[ebx]
	push scanArr
	call printf
	add esp,8
	popa

	inc ecx
	cmp ecx,dword[n]
	jl lp1
endof:
	ret 

