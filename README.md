En este archivo README.md vamos a poner un poco de la teoría de lo que estamos haciendo. 

bsf	STATUS,5	0101	101  0000011 -> con bsf ponemos a 1 el bit de status, esto nos lleva al banco 1
bcf	SATUTS,5	0100	101  0000011 -> con bcf ponemos a 0 el bit de status, esto nos lleva al banco 0

bsf	0x03,5 ; asi seria en ensamblador puro, sin el #include "PIC16Fxxxx"

bit 5 es el RP0
bit 6 es el RP1

RP1	RP0
0	0	-> RB0
0	1	-> RB1
