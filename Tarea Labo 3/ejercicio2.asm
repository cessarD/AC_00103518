    org 	100h

	section	.text

    mov CX,5d
    mov AX,1d
    factorial:
    mov BX,CX
    MUL BX
    LOOP factorial
    MOV [20Bh],AX
    int 20h