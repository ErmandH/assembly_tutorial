	AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main
		
__main
; amac asagidaki kodu yapmak
; int add_nums(int num1, int num2) {  return num1 + num 2}
; int main(){ add_nums(1, 2) }

	MOV R0, #1 ; ARG1
	MOV R1, #2 ; ARG2

	BL add_nums
	MOV R2,R0

add_nums
	add r0, r0, r1
	bx lr
	END
