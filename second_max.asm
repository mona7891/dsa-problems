section .data
	print db "Enter the Elements :",0
	scan db "%d",0

	printsecmax db "Second max element in Array are : %d ",10,0
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

	;; finding max 

	
	xor ecx,ecx
	mov esi ,-1          ;;int max = INT_MIN;
	mov edi ,-1          ;;int secmax = INT_MIN;
lp1:
	mov ebx,array
	mov eax,4

	mul ecx
	add ebx,eax

	cmp dword[ebx],esi     ;;(arr[i] > max)
	jng nobig

	mov edi,esi            ;;secmax = max;
	mov esi,dword[ebx]     ;;max = arr[i];
	jmp noupdate
nobig:
	cmp dword[ebx],esi    ;;(arr[i] < max  
	jz noupdate

	cmp dword[ebx],edi    ;;arr[i] > secmax)
	jng noupdate

	mov edi,dword[ebx]    ;;secmax = arr[i];
noupdate:

	inc ecx
	cmp ecx,dword[n]
	jl lp1

endof:

	pusha 
	push edi 
	push printsecmax
	call printf
	add esp,8
	popa
ret
