org 100h

    section .text
    MOV SI, 5d
    MOV DI, 0d
    MOV byte [200h], 5d ;
    call modotexto
    call movercursor
    call escribirnombre
    call movercursor
    call escribirnombre2
    call movercursor
    call escribirnombre3
    call movercursor
    call escribirnombre4
    call esperartecla
    call exit

    modotexto: 
        MOV AH, 0h
        MOV AL, 03h
        INT 10h
        RET
    movercursor:
        MOV [200h],SI
        MOV DH,[200h] 
        MOV DL, 5d 
        MOV AH, 02h 
        MOV BH, 0h 
        INT 10h
        RET
    escribirnombre:
        MOV AH, 09h 
        MOV DX, nombre1 
        INT 21h
        inc SI
        RET
    escribirnombre2:
        MOV AH, 09h 
        MOV DX, nombre2 
        INT 21h
        inc SI
        RET
  escribirnombre3: 
        MOV AH, 09h
        MOV DX, nombre3 
        INT 21h
        inc SI
        RET
  escribirnombre4:
        MOV AH, 09h 
        MOV DX, nombre4
        INT 21h
        inc SI
        RET

    esperartecla:
        MOV AH, 00h
        INT 16h

        ret
    exit:
        int 20h

section .data

nombre1 DB "Cesar$"
nombre2 DB "Augusto$"
nombre3 DB "De la O$"
nombre4 DB "Gallegos$"