    org 	100h

	section	.text


	mov	byte [200h], "C"
	mov	byte [201h], "A"
	mov	byte [202h], "D"
    mov	byte [203h], "G"

    ;Direccionamiento absoluto
    mov AX,0000h
    mov AL, [200h]
    ;Direccionamiento relativo
    mov BX, 201h
    mov CL, [BX]

    ;Direccionamiento indirecto base mas indice
    mov BX, 202h
    mov DL,[BX + DI]
    ;Direccionamiento relativo por registro
    mov BX, 200h
    mov DI, [BX + 3h]
    int 20h