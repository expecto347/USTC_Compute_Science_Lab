#calculate 4*5
#save to &=$s1
_start:    
		addi $t0,$0,4       	# t0=4   0					20080004
		addi $t1,$0,5   		# t1=5	4					20090005
_loop2:
		add $t2,$t0,$0			# mov $t0 to $t2    8		01005020
_loop1:
		addi $t2,$t2,-1			# t2 = t2 - 1    12			214affff
		addi $s0,$s0,1  		# s0 = s0 + 1	16			22100001
		beq $t2,$zero,_loop1out	#		20					11400001
		j _loop1				#		24					08000003
_loop1out:
		addi $t1,$t1,-1			# t1 = t1 - 1	28			2129ffff
		beq  $t1,$zero,_finish	#		32					11200001
		
		j _loop2				#		36					08000002
_finish: 
		sw   $s0,8($0)			# sw to 0x8		40			ac0a0008
		j   _finish				#		44					0800000a











