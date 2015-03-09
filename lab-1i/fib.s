	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, r7, lr}

	sub r4, r0, #0
	mov r5, #0
	mov r6, #1
	mov r7, #1

.L5:
	cmp r4, r7
	beq .L6

	add r7, #1
	add r6, r5
	sub r5, r6, r5
	b .L5

.L6:
	sub r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
