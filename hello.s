.section .data
msg:
    .asciz "Merhaba dunya\n"

.section .text
.global _start

_start:
    mov r0, #1       @ stdout (standart çıkış)
    ldr r1, =msg     @ mesajın adresini r1'e yükle
    mov r2, #13      @ mesaj uzunluğunu r2'ye yükle (newline karakteri dahil)
    mov r7, #4       @ write sistem çağrısı numarası
    svc 0            @ sistem çağrısını yap

    mov r7, #1       @ exit sistem çağrısı numarası
    mov r0, #0       @ çıkış kodu: 0 (başarılı çıkış)
    svc 0            @ sistem çağrısını yap