	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main	
; bosluklara dikkat COUNT label oldugu icin en basta ve bosluk yok
COUNT 	EQU 0x25 ; const COUNT = 0x25

VAL1 	RN R1 ; R1 registerina isim verdik VAL1 diye
VAL2 	RN R2 ; VAL2 = R2
SUM 	RN R3 ; SUM = R3

		MOV R2, #COUNT ;R2 = 0x25
		MOV VAL1, #0x25 ;R1 = 0x25
		MOV VAL2, #0x34 ;R2 = 0x34
		ADD SUM, VAL1,VAL2 ;R3 = R2 + R1
HERE B HERE		
		END