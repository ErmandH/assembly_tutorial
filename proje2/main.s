	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main	
		; *************** LDR komutu ***********************
		LDR R1,[R0]
		; LDR komutu pointerin icindeki degeri oku gibi bir sey ornegin
		; int value = 5;
		; int *register0 = &x; // R0 registerı 5 değerinin adresini tutuyo
		; int register1 = *register0 // LDR komutu register0 ın tuttuğu adrese gidip değeri register1 e yazıyor
		; R0 = 0x20000000 oldugunu var sayalim bu 5 degerini saklayan yerin adresi
		; aşağıdaki komut ile beraber R0 ın tuttuğu adrese gidip içindeki ilk 4 bytei R1 e koy demek

		; ***************  STR Komutu ***********************
		; STR R1,[R0]
		; STR komutu bu sefer verilen adrese yazma işlemi yapıyor
		; int *register0 = malloc(4); // register 0 herhangi bir adresi tutuyor
		; int register1 = 0x76543210; register 1 bu degeri tutuyo varsayalim
		; *register0 = register1; // register0 in tuttugu hafizaya register1 in ilk 4 byteini koydum

		LDR R1,=0x20000000 ; R1 registerina adres atamasi yapiyorum
		MOV R2, #0x3214
		STR R2,[R1] ; R1 in icindeki adrese gidip R2 yi yazicak
HERE	B HERE		
		END