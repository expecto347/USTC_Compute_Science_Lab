
	.text
	.globl main
main:
	addi	$t0, $t0, 10
	addi	$t1, $t1, 20
again:
	add 	$t2, $t2, $t1
	beq	$t1, $t2, again
	sw	$t2, -10($t0)
	lw	$t3, -10($t0)
	j	target
	add	$t0, $t0, $t0
target:
	add	$t0, $t0, $t0
	
