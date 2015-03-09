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

	sub r4, r0, #0	@ store r0(parameter) in r4
	mov r5, #1      @ r5 is previous fib num 
	mov r6, #0	@ r6 is current fib num
	mov r7, #0	@ r7 is current index

.L5:			@ this is a loop
	cmp r4, r7	@ if current index equals to the index we want  
	beq .L6		@ break

	add r7, #1	@ index += 1
	add r6, r5	@ Fn = Fn-1 + Fn-2
	sub r5, r6, r5	@ Fn-1 = Fn - Fn-2
	b .L5		@ continue loop

.L6:
	sub r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}		@EPILOG

	@ END CODE MODIFICATION

	.size fibonacci, .-fibonacci
	.end
