
- TST R1, R2

- TST komutu bit kontrolu yapar verdigimiz ikinci degerle AND islemine sokar ornegin 3. bitin 1 olup olmadigini kontrol etmek icin TST R1, #0x4 deriz ; 0100 oldugu icin 3.bit 1 ise Z flagi 0 olacak cunki o bitle AND yapinca 1 olucak, o bit 1 degilse 0 olucak ve Z = 1 olucak




- TEQ XOR kapisina sokar iki degeri
- TEQ komutu genellikle iki değerin eşit olup olmadığını kontrol etmek için kullanılır. Bu, özellikle koşullu dallanmalar ve diğer koşullu işlemler için faydalıdır.

- TEQ R0, #0x01
- BEQ Label  ; Eğer R0 0x01'e eşitse, Label'a dallan.


