.text
addi a0,a0,0
addi s6,s6,19
addi t1,t1,1
addi t2,t2,2


add a2,a1,a0

Loop:add t3,t1,t2
sw t3,0(a2)
addi a0,a0,4
add a2,a0,a1
beq a0,s6,Exit

add t1,t3,t2
sw t1,0(a2)
addi a0,a0,4
add a2,a0,a1
beq a0,s6,Exit

add t2,t1,t3
sw t2,0(a2)
addi a0,a0,4
add a2,a0,a1
beq a0,s6,Exit

beq x0,x0,Loop

Exit:
