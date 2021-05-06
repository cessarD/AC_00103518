    org 	100h

	section	.text

    MOV AX,0d
    ADD AX,0d
    ADD AX,1d
    ADD AX,0d
    ADD AX,3d
    ADD AX,5d
    ADD AX,1d
    ADD AX,8d
    MOV BX,8d
    DIV BX
    mov [20Ah],AX
    int 20h