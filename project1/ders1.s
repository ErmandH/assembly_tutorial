	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main
		;ders1
HERE	mov r0,#0x10 ; r0 = 0x10
		mov r1,#0x44 ; r1 = 0x44

		add r2,r0,r1 ; r2 = r0 + r1
		add r3,r1,#4 ; r4 = r1 + 4
		;add r5,#8,#4 olmuyor ilki register olmak zorunda

		sub r4,r1,r0 ; r4 = r1 - r0
		sub r5,r1,#1 ; r5 = r1 - 1

		mov r0,#5
		mov r1,#10
		; mul sadece register aliyor
		mul r8,r0,r1 ; r8 = r0 * r1


		mov r0,#3
		mov r1,#3
		; subin sonundaki s tagi çıkarma işlemi sonucunda bir flag değişirse o flagı güncelliyo
		; örneğin bu işlem sonucunda sonuç 0 olduğu için Zero flagı 1 olucak Negative flagı 0 olucak eğer 1 se
		subs r2,r1,r0 
		B HERE		
		END