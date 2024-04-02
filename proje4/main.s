	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main	
		; *************** ADC komutu ***********************
		; Add with carry
		; ADC Rd,Rn,Op2 ;Rd = Rn + Op2 + C
		; 2's complement + 1
		; SUBS ta sonuc pozitifse C = 1 oluyo (2's complement + 1 ile toplayinca 1 overflow oluyo)

		; *************** MUL komutu ***********************
		; MUL Rd,Rn,Op2 ;Rd = Rn × Op2
		MOV R1,#0x25 ;R1=0x25
		MOV R2,#0x65 ;R2=0x65
		MUL R3,R1,R2 ;R3 = R1 × R2 = 0x65 × 0x25

		; *************** UMULL (unsigned multiply long) ***********************
		; UMULL RdLo,RdHi,Rn,Op2
		;RdHi:RdLoRd = Rn × Op2

		LDR R1,=0x54000000 ;R1 = 0x54000000
		LDR R2,=0x10000002 ;R2 = 0x10000002
		UMULL R3,R4,R2,R1 ;0x54000000 × 0x10000002
		; = 0x054000000A8000000
		;R3 = 0xA8000000, the lower 32 bits
		;R4 = 0x05400000, the higher 32 bits
HERE	B HERE		
		END