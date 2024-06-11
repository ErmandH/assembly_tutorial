
	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main
	MOV R1,#0x37 ;R1 = 0x37
	MOV R2,#0x32 ;R2 = 0x32
	AND R1,R1,#0x0F ;mask 3 to get unpacked BCD
	AND R2,R2,#0x0F ;mask 3 to get unpacked BCD
	MOV R3,R2,LSL #4 ;shift R2 4 bits to left to get R3 = 0x20
	ORR R4,R3,R1 ;OR them to get packed BCD, R4 = 0x27
HERE B HERE