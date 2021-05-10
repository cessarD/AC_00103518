    org 	100h

	section	.text


    MOV byte [200h],0d
    MOV byte [201h],0d
    MOV byte [202h],1d
    MOV byte [203h],0d
    MOV byte [204h],3d
    MOV byte [205h],5d
    MOV byte [206h],1d
    MOV byte [207h],8d
    MOV AX,0d
    MOV SI,0d
    MOV BX,8d
    jmp iterar
    iterar:
    CMP SI,8d
    JE exit
    ADD AL,  [200h + SI]
    INC SI
    jmp iterar
    exit:
    DIV BX
    mov [20Ah],AX
    int 20h