list p=16F84A

org 0x00

Start
  STATUS equ 03h
  TRISA equ 085h
  TRISB equ 086h
  PORTA equ 05h
  PORTB equ 06h

Setup
  bsf STATUS,5
  movlw 0x00
  movwf TRISB
  movlw 0xff
  movwf TRISA
  bcf STATUS,5
  movlw 0x00
  movwf PORTB

Main
  movlw 0xff
  movwf PORTB

  movlw b'00000000'
  movwf PORTB
  
goto Main
end
