#include "io.h"

// inb，从端口号为 port_from 的端口读取一个字节
unsigned char inb(unsigned short int port_from) {
    unsigned char value;
    __asm__ __volatile__ ("inb %w1, %b0": "=a"(value): "Nd"(port_from));
    return value;
}

// outb，向端口号为 port_to 的端口输出一个字节
void outb(unsigned short int port_to, unsigned char value) {
    __asm__ __volatile__ ("outb %b0, %w1":: "a"(value), "Nd"(port_to));
}
