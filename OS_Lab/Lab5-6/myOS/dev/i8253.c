#include "../include/io.h"

void init8253(void){
    outb(0x43, 0x34);
    //~1HZ
    outb(0x40,1193180 & 0xff);
    outb(0x40,1193180 >>8);
    outb(0x21, inb(0x21) & 0xFE);
}