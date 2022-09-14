;;  in c program add 

;;#include<stdio.h>

;;      void main()
;;      {
;;              int = 0;
;;              printf("Hello moan %d");
;;

section .data
        msg db "Hello Mona ",10,0
section .text
        global main
        extern printf
main:
        mov eax,0

        pusha
        push msg
        call printf
        add esp,4
        popa

        ret

