#include "../../include/myPrintk.h"
#include "../../include/mem.h"
unsigned long pMemStart;//可用的内存的起始地址
unsigned long pMemSize;//可用的大小

void memTest(unsigned long start, unsigned long grainSize){
	/*本函数需要实现！！！*/
	/*功能：检测算法
		这一个函数对应实验讲解ppt中的第一大功能-内存检测。
		本函数的功能是检测从某一个地址开始的内存是否可用，具体算法就可以用ppt上说的写了读看是否一致。
	注意点两个：
	1、开始的地址要大于1M，需要做一个if判断。
	2、grainsize不能太小，也要做一个if判断
	*/
	if (start < 0x100000){
		myPrintk(0x7,"The starting address must not be less than 1M, Please enter a valid address and try it again.");
	}
	else if (grainSize < 0x4){
		myPrintk(0x7,"The grainSize must not be smaller than 4 bytes, Plase enter a valid grainSize and try it again.");
	}
	else{
		myPrintk(0x7,"MemStart:  %x  \n", start);
		unsigned char *MemPointer = (unsigned char*)start; //定义初始指针地址
		unsigned char a,b; //存储读出来的两个字节
		while(1){
			a = *MemPointer;
			b = *(MemPointer + 1); //存储头两个变量，以防止破坏内存

			*MemPointer = 0xAA;
			*(MemPointer + 1) = 0x55; //向grain的头两个字节写入0xAA55

			if(*MemPointer != 0xAA || *(MemPointer + 1) != 0x55){
				*MemPointer = a;
				*(MemPointer + 1) = b;
				break;
			} // 判断是否正常更改

			*MemPointer = a;
			*(MemPointer + 1) = b; //写回原来的字节

			a = *(MemPointer + grainSize -1);
			b = *(MemPointer + grainSize -2);

			*(MemPointer + grainSize -1) = 0xAA;
			*(MemPointer + grainSize -2) = 0x55;

			if(*(MemPointer + grainSize -1) != 0xAA || *(MemPointer + grainSize -2) != 0x55){
				*(MemPointer + grainSize -1) = a;
				*(MemPointer + grainSize -2) = b;
				break;
			}  // 判断是否正常更改

			*(MemPointer + grainSize -1) = a;
			*(MemPointer + grainSize -2) = b; //写回原来的字节

			MemPointer = MemPointer + grainSize;
		}
		pMemSize = (unsigned long)MemPointer - start; //总共可用的内存大小
		myPrintk(0x7,"MemSize:  %x  \n", pMemSize);
	}
}

extern unsigned long _end;
void pMemInit(void){
	unsigned long _end_addr = (unsigned long) &_end;
	memTest(0x100000,0x1000);
	myPrintk(0x7,"_end:  %x  \n", _end_addr);
	if (pMemStart <= _end_addr) {
		pMemSize -= _end_addr - pMemStart;
		pMemStart = _end_addr;
	}

	pMemHandler = dPartitionInit(pMemStart,pMemSize);
	dPartitionWalkByAddr(pMemHandler);
}
