LIST P=16F84A   ; Processor type

; Manual SFR definitions
STATUS  EQU 03h
PORTA   EQU 05h
TRISA   EQU 85h

; Initialize RA0 as output
BSF STATUS, 5      ; Bank1
MOVLW 0FEh         ; RA0 output
MOVWF TRISA
BCF STATUS, 5      ; Bank0

loop:
    BSF PORTA, 0   ; RA0 ON
    CALL delay
    BCF PORTA, 0   ; RA0 OFF
    CALL delay
    GOTO loop

delay:
    MOVLW 0FFh
    MOVWF 20h
d1:
    DECFSZ 20h, F
    GOTO d1
    RETURN

END
