	.global temp

temp:
	movs r3, r0		;
	beq ret			;
	mov r1, #0		;
	mov r2, #1		;
	subs r3, r3, r2	;
	beq ret1;
loop:
	add r0, r2, r1	;
	mov r1, r2		;
	mov r2, r0		;
	subs r3, r3, #1	;

	beq ret			;
	bne loop		;
ret1:
	mov r0, r2		;
ret:
	mov PC, lr		;
