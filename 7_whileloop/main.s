	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main
	; amac asagidaki yapiyi olusturmak
	;  int i = 0
	;  while (i < 5) 
	;  {
	;	 i++
	;  }
	MOV R0, #0

; r0 her 1 arttiktan sonra tekrar bu branche gelecek ve cmp fonksiyonu calisarak kontrol edicek
; kontrol sonucu R0 5 ten buyuk ya da esitse end_of_while branchine giderek program kaldigi yerden devam edecek
loop
	CMP R0, #5 ; r0 ile 5 i karsilastir
	BGE end_of_while ; eğer r0 5'ten büyük ya da eşitse döngü bitip end_of_while branchinden devam edicek program döngü biticek yani
	
	; while dongusunun ici
	ADD R0, #1 ; i++
	B loop ; siradaki dongu icin basa don

end_of_while
	; program kaldigi yerden devam edicek
	MOV R1, #10
	MOV R2, #8
	END
