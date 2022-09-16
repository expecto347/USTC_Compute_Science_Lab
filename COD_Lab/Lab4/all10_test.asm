addi t0,x0,10
add t1,x0,t0
addi t2,x0,8
sub s0,t1,t2
auipc x1,10
sw s0,8(x0)
lw s1,8(x0)
beq x0,x1,funct1
beq x0,x0,funct2
add x0,x0,x0
add x0,x0,x0
add x0,x0,x0

funct1:
add x0,x0,x0
jalr x1,0(x1)

funct2:
add x1,t1,t1
blt x0,x1,funct3
add x0,x0,x0

funct3:
add x0,x0,x0
jal x1,funct1
addi s2,x0,3
