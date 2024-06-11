; toplama

	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main

startval	EQU 1
endval 		EQU 15
SUM			RN R2

	MOV R0, #startval ; baslangic degeri
	MOV R1, #endval ; bitis degeri
	MOV SUM, #0 ; TOPLAM
	; while (i <= 15) { sum += i; i++}
loop
	CMP R0, R1 ; R0 <= R1 mi kontrol et
	BGT end_loop ; R0 > R1 ise devam et
	ADD SUM, SUM, R0 ; R2 = R2 + R0
	ADD R0, R0, #1 ; bir sonraki dongu icin R0 i 1 arttir
	B loop ; siradaki dongu

; dongu bittikten sonra programin normal akisina devam et
end_loop
	
HERE B HERE
	END





