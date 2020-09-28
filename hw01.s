PROCESSOR 16F887
    #include<xc.inc>
    ;JESSI DARISSEL GODINEZ PALMA 17080205 INGNIERIA MECATRONICA
    ;CODIGO HELLO WORLD; FECHA:27 DE SEP     HORA:DE 12:00 PM A 8:43PM
    ;MATERIA MICROCONTROLADORES 
    ;CORREO:imct17.jgodinezp@itesco.edu.mx
    
    ;CONFIGURACION DE FUSES
    CONFIG FOSC=INTRC_NOCLKOUT
    CONFIG WDTE=OFF
    CONFIG PWRTE=ON
    CONFIG MCLRE=OFF
    CONFIG CP=OFF
    CONFIG CPD=OFF
    CONFIG BOREN=OFF
    CONFIG IESO=OFF
    CONFIG FCMEN=OFF
    CONFIG LVP=OFF
    CONFIG DEBUG=ON
    
    CONFIG BOR4V=BOR40V
    CONFIG WRT=OFF
    
    PSECT udata_bank0
    ;declaracion de variables 
    max:
        DS  1;MAX->1byte
    tmp:
        DS  1;TMP->1byte
    jes:
        DS 1 ;JES-> 1byte
	PSECT resetVec,class=CODE,delta=2
	PAGESEL main
	goto main
	;codigo
    PSECT code
        main:
           ;movlw 0xF0
	   ;movwf max
	   ;movlw 0x0F
	   ;movwf tmp
	   bsf STATUS,6 ;banco 1
	   bsf STATUS,5 ;selecionamos el banco 1
	   bcf STATUS,6 ;banco 0
	   bcf STATUS,5 ;seleccionamos el banco 0
	   movlw 0b10010010
	   ANDLW 0b01111111
	   movwf max
	   goto main ; se guarda en la variable
	   END
	   
    
    


