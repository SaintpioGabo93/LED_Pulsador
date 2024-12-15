    LIST P=16F628A
    #include "/opt/microchip/mplabx/v5.20/mpasmx/p16lf628a.inc"
    
    __CONFIG _FOSC_INTOSCCLK & _WDTE_OFF & _PWRTE_OFF & _MCLRE_OFF & _BOREN_ON & _LVP_OFF & _CPD_OFF & _CP_OFF

    ORG 0x00  ; Dirección inicial

; Configuración del TRISB (entradas/salidas)

    ; Cambiamos al banco 1 para configurar TRISB
    BSF STATUS, RP0 ; Activamos el bit RP0 para acceder al banco 1

    ; Configuramos las salidas (0) en los bits 0 a 3 del puerto B
    BCF TRISB, 0
    BCF TRISB, 1
    BCF TRISB, 2
    BCF TRISB, 3

    ; Regresamos al banco 0 para manipular el PORTB
    BCF STATUS, RP0

; Configuración del PORTB (salidas)

    ; Configuramos el estado de los pines del puerto B
    BSF PORTB, 0 ; Encendemos RB0
    BCF PORTB, 1 ; Apagamos RB1
    BSF PORTB, 2 ; Encendemos RB2
    BCF PORTB, 3 ; Apagamos RB3

    END