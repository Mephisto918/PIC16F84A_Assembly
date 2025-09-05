list p=16F84
org 0x00

Start
  STATUS equ 03h
  TRISA equ 85h
  TRISB equ 86h
  PORTA equ 05h
  PORTB equ 06h
  val1 equ 0ch
  val2 equ 0dh
  val3 equ 0eh

Setup 
  bsf STATUS,5
  movlw 0x00
  movwf TRISB
  movlw 0xff
  movwf TRISA
  bcf STATUS,5
  movlw 0x00
  movwf PORTB
  
  movlw 0xff
  movwf val1
  movwf val2

Main
  movlw 0xff
    movwf PORTB
    call delay
    movlw b'00000000'
    movwf PORTB
  call delay
goto Main

delay
loop1
  movlw 0xff
  movwf val1
  loop2
    nop
    nop
    decfsz val1,1
    goto loop2
decfsz val2,1
goto loop1

  movlw 0xff
  movwf val1
  movwf val2
return 
end


