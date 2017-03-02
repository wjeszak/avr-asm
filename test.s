; Dla zestawu EVBEdu (Atmega128)
; 
; Tworzenie:
; (nie wiem dlaczego nie chce się asemblować dla Atmega128)
; avr-as -mmcu=atmega64 -o test.o test.s
; avr-ld -o test.elf test.o
; avr-objcopy --output-target=ihex test.elf wsad.hex
; avrdude -c stk500v2 -p m128 -U flash:w:wsad.hex
.equ PORTB, 0x18
.equ DDRB, 0x17
.org 0x00
reset:
rjmp main
main:
ldi r16, 0xff
ldi r17, 0x00
out DDRB, r16
out PORTB, r17
end:
rjmp end;
