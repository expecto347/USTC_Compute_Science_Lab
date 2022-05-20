#include "io.h"

void init8253(void){
	outb(0x43,0x34);
	
	outb(0x40,0b10011100);
	outb(0x40,0b00101110); //将分频参数的头八位和尾八位分别传入0x40
}
