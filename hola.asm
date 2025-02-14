section .data
    mensaje db "Hola, mundo!", 0Ah  ; Mensaje con salto de línea
    len equ $ - mensaje              ; Longitud del mensaje

section .text
    global _start

_start:
    mov edx, len
    mov ecx, mensaje
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
