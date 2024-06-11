	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main	
;		- Mantik operatorleri hepsinin sonuna S koyulabiliyo flagler icin
;       *********** AND **********
;		AND Rd, Rn, Op2 ;Rd = Rn ANDed Op2
		MOV R1,#0x35
		AND R2,R1,#0x0F ; AND operatoru ile bitleri tek tek AND kapisina sokuyo sonucu R2 ye atiyo
		; R2 = R1 & 0x35
		; AND R2,R0,R1

;		*********** ORR **********
		; OR kapisina sokuyo buda
		; ORR Rd, Rn, Op2 ;Rd = Rn ORed Op2

		; ORRS => sonuca gore flagleri degistiriyo
		ORRS R2,R1,#0x68 ;R2= R1 ORed 0x68
		ORR R2,R0,R1 ;R2= R0 ORed with R1

;		*********** EOR **********
;		- XOR kapisina sokuyo
;		* EOR Rd,Rn,Op2 ;Rd = Rn Ex-ORed with Op2
		EOR R2,R1,#0x78 ;R2 = R1 ExOred with 0x78
;		- XOR kapisini bir registeri sifirlamak icin kullanabiliriz
;		- EOR R1,R1,R1 dedigim zaman kendisiyle karsilastirdiginda tum bitlerde sonuc 0 olucak

;		- XOR kapisi ile ayni zamanda iki registerin veya degerin birbirine esit olup olmadiginida anlayabiliriz
;		- EORS R2,R2,R3 dersem Z flag = 1 veya R2 = 0 ise R2=R3 diyebilirim

;		*********** BIC **********
		; Örnek: R1 kaydındaki değerin 3 numaralı bitini sıfırla

		; R1 kaydında saklanan değer: 10110101 (hexadecimal olarak B5)

		MOV R1, #B5 ; R1'e 10110101 değerini ata

		; Şimdi R1'in içeriğini görelim:
		; R1 = 10110101

		; Şimdi BIC komutunu kullanarak 3 numaralı biti sıfırlayalım:
		BIC R1, R1, #4 ; 4 = 00000100 binary
		; BIC komutu R1'in içeriğinden 3 numaralı biti sıfırlar

		; Şimdi R1'in içeriğini görelim:
		; R1 = 10110001

		; 3 numaralı bitin sıfırlandığını görebiliriz.


;		*********** MVN (move negative) **********
;		MVN Rd, Rn ; Rn'nin tersini alıp Rd ye atar yani 0x0 ise Rn 0xFFFFFFFF yapar Rd'nin değerini

;		*********** LSR (logical shift right) **********
; 		- bitleri saga kaydiriyo
; 		- eger saga kaydirilan son bit 1 ise C flagi 1 oluyo
		MOV R0,#0x9A ;R0 = 0x9A
		MOVS R1,R0,LSR #3 ; R0'in bitlerini 3 kere saga kaydir R1 e ata

;		*********** LSL (logical shift left) **********
;		- bitleri sola kaydiriyo
		MOVS R2,R1,LSL #8

;		*********** ROR (rotate right) **********	
;		- bu da sağa kaydırdığımız taşan biti en başa atıyo yani
;		-  0000 1010 diyelim ilk kaydirmada
;		- 0000 0101 oluyor burda ayni onceki gibi ama bir sonraki kaydirmada 1 tastigi icin en sola gelicek
;		- 1000 0010 olucak bir sonraki kaydirmada
;		- 0100 001 olucak
		MOVS R1,R1,ROR #1

;		*********** ROL (rotate left) **********	
;		- sola kaydirma normalde yok bunun icin ROR kullaniyoruz
;		- 1 bit sola kaydirmak icin MOVS R1,R1,ROR #31 diyoruz
;		- 3 bit kaydirmak icin 32 - 3 = 28 --> 	MOVS R1,R1,ROR #28 diyoruz

;		*********** RRX (rotate right through carry) **********	
;		- ROR'un aynisi ama bunda eger taşan bit 1 ise C flagı da 1 oluyor
		MOVS R2,R2,RRX
HERE	B HERE		
		END