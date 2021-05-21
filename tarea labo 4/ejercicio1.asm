    org 	100h


    section .data
    lista db 1,2,3,4,5,6,7,8,9,10
    

	section	.text

    MOV AX,0d
    MOV SI,0d
    MOV BX,2d
    MOV byte [200h],0d
    MOV byte [210h],0d
    jmp iterar
    iterar:
    CMP SI,10d
    JE exit

    MOV AL, lista[SI]
    call imparopar
    INC SI
    jmp iterar

    imparopar:
    MOV BX,2d
    div BX
    CMP DX,0d
    JE par
    CMP DX,1d
    JE impar
    

    par:
    MOV BX,[200h]
     MOV CL, lista[SI]
    MOV  [300h + BX],CL
    INC BX
    MOV [200h],BX
    RET
    
    impar:
    MOV BX,[210h]
    MOV CL, lista[SI]
    MOV  [320h + BX],CL
    INC BX
    MOV [210h],BX
    RET


    exit:

    int 20h