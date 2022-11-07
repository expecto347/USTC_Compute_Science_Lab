.globl start
MAGIC = 0x1BADB002
FLAGS = 0
CHECKSUM = (-(0x1BADB002 + 0)) /*按照协议说明对multibootHeader进行初始化*/

.section ".multiboot_header"
.long MAGIC
.long FLAGS
.long CHECKSUM /*使用.long和前面定义的参数构建头结构*/

.text  
.code32 /*进入代码段*/

start:
movl $0x2f422f50, 0xB8000 
movl $0x2f302f32, 0xB8004
movl $0x2f302f30, 0xB8008
movl $0x2f322f30, 0xB800C
movl $0x2f372f37, 0xB8010 /*输出绿底白字的PB20000277*/

movw $0x3F8, %dx /*将串口地址赋值给dx*/

movb $0x50, %al
outb %al, %dx

movb $0x42, %al
outb %al, %dx

movb $0x32, %al
outb %al, %dx

movb $0x30, %al
outb %al, %dx

movb $0x30, %al
outb %al, %dx

movb $0x30, %al
outb %al, %dx

movb $0x30, %al
outb %al, %dx

movb $0x32, %al
outb %al, %dx

movb $0x37, %al
outb %al, %dx

movb $0x37, %al
outb %al, %dx /*依次输出PB200000277*/

nop
nop

loop: jmp loop /*程序进入死循环*/