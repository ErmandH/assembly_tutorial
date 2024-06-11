	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main	
; ************** EQU ****************
; bosluklara dikkat COUNT label oldugu icin en basta ve bosluk yok
; EQU sabit bir degere label veriyor
COUNT 	EQU 0x25 ; const COUNT = 0x25

; ************** RN ****************
; RN bir registera label veriyor
VAL1 	RN R1 ; R1 registerina isim verdik VAL1 diye
VAL2 	RN R2 ; VAL2 = R2
SUM 	RN R3 ; SUM = R3

		MOV R2, #COUNT ;R2 = 0x25
		MOV VAL1, #0x25 ;R1 = 0x25
		MOV VAL2, #0x34 ;R2 = 0x34
		ADD SUM, VAL1,VAL2 ;R3 = R2 + R1

; ************** DCB (define constant byte) ****************
; DCB 1 bytelik bir alan ayiriyor hafizada
MYVALUE DCB 5 ;MYVALUE = 5
MYMSAGE DCB "HELLO WORLD" ;string

; ************** DCW (define constant half-word) ****************
; DCW half-wordluk bir alan ayiriyor hafizada her biri icin
MYDATA DCW 0x20, 0xF230, 5000, 0x9CD7

; ************** DCD (define constant word) ****************
; DCD her biri icin 4 bytelik alan ayiriyor
MYDATA2 	DCD 0x200000, 0xF30F5, 5000000, 0xFFFF9CD7

; ************** SPACE ****************
; SPACE ile istedigimiz kadar byte allocate edebiliyoruz
LONG_VAR 	SPACE 100 ;Allocate 100 bytes
OUR_ALFA 	SPACE 2 ;Allocate 2 bytes

; ************** ADR ****************
;ADR Rn,label  LDR Rn,=0xFF in daha performansli hali
;ADR R2, OUR_FIXED_DATA ;point to OUR_FIXED_DATA

			LDR R2,=OUR_FIXED_DATA ;OUR_FIXED_DATA bizim allocate ettigimiz memorynin baslangic adresi 
			LDRB R0,[R2] ;load R0 with the contents
			;of memory pointed to by R2
			ADD R1,R1,R0 ;add R0 to R1
			STRB R1,[R2]


HERE B HERE
OUR_FIXED_DATA
	DCB 0x55,0x33,1,2,3,4,5,6
	DCD 0x23222120,0x30
	DCW 0x4540,0x50
	
		END



