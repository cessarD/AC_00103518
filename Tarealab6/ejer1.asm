
	org 	100h

	section	.text


	mov 	DX, msg1
	call  	EscribirCadena

	mov 	BP, frase
	call  	LeerCadena

       lea     si, frase     
       lea     di, clave    
       cmpsb       
        je     Bienvenida
        jne   Error
        
	

	call	EsperarTecla

	int 	20h

	section	.data

msg1	db	"Ingresa la clave: ", "$"
clave	db	"CADG1", "$"
inicio  db "Bienvenido", "$"
error  db "Incorrecto", "$"

frase 	times 	20  	db	" " 	


EsperarTecla:
        mov     AH, 01h         
        int     21h
        ret




Error:
    	mov 	DX, error
        call 	EscribirCadena
        ret
Bienvenida:
    	mov 	DX, inicio
        call 	EscribirCadena
        ret
LeerCadena:
        xor     SI, SI          
while:  
        call    EsperarTecla    
        cmp     AL, 0x0D        
        je      exit           
        mov     [BP+SI], AL   	
        inc     SI              
        jmp     while          
exit:
	mov 	byte [BP+SI], "$"	
        ret

EscribirCadena:
	mov 	AH, 09h
	int 	21h
	ret