_start:    
	addi	$t0, $0, 0		# 20080000	0
	addi	$t1, $0, 10   	# 2009000a	4
	addi	$t2, $0, 5		# 200a0005	8
_loop:
	add	$t0, $t0, 1			# 21080001	12
	beq	$t0, $t2, _success	# 110a0004	16
	beq	$0, $0, _loop		# 1000fffd	20
	beq	$0, $0, _fail		# 10000000	24
        
_fail:  
	sw	$0,8($0)			# ac0b0008	28
	beq	$0, $0, _fail		# 1000fffe	32
        
_success:
	sw	$t2,8($0)			# ac0a0008	36
	beq	$0, $0, _success 	# 1000fffe	40
	