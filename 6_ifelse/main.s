	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main
        MOV R0, #20        ; R0 registerına 10 değerini yükle
        MOV R1, #10        ; R1 registerına 20 değerini yükle

        CMP R0, R1         ; R0 ve R1 değerlerini karşılaştır
        BGT greater_than   ; Eğer R0 > R1 ise "greater_than" etiketine dallan

        ; if bloğu: R0 <= R1
        MOV R2, #8         ; R2 registerına 0 değerini yükle (if bloğu)
        B end_if           ; if bloğunun sonuna git

greater_than
        ; else bloğu: R0 > R1
        MOV R2, #9         ; R2 registerına 1 değerini yükle (else bloğu)

end_if
        ; Program burada devam eder
		; Burasi her turlu calisiyo
		MOV R5, #3
		MOV R6, #8
        END