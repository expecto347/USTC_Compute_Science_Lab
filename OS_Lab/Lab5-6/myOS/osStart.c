#include "include/i8253.h"
#include "include/i8259.h"
#include "include/irq.h"
#include "include/uart.h"
#include "include/vga.h"
#include "include/mem.h"
#include "include/myPrintk.h"
#include "include/task.h"
#include "include/schedule.h"

int schedule_type = FCFS; //调度算法

extern void scheduleInit(void);
void doSomeTestBefore(void);

void pressAnyKeyToStart(void){
	myPrintk(0x5,"Prepare uart device\n");
	myPrintk(0x5,"Then, press any key to start ...\n");

	uart_get_char();
}

void osStart(void){
	clear_screen();
	pressAnyKeyToStart(); // prepare for uart device
	init8259A();
	init8253();
	enable_interrupt();

	clear_screen();

	pMemInit();
	KernelMemInit();
	UserMemInit(0x100000);  //给用户态分配一个10M大小的内存，可以自定义修改

	/*
	{
		unsigned long tmp = dPartitionAlloc(pMemHandler,100);
		dPartitionWalkByAddr(pMemHandler);
		dPartitionFree(pMemHandler,tmp);
		dPartitionWalkByAddr(pMemHandler);
	}
	*/

	myPrintk(0x5,"Initializing task...\n");
	init_TCB_pool(); //初始化TCB池
	init_rdyQ(); //初始化就绪队
	myPrintk(0x7,"Successful!\n");

	myPrintk(0x5,"Setting the timer...\n");
	doSomeTestBefore();
	myPrintk(0x7,"Successful!\n");

	scheduleInit(); //进入调度程序

	while(1); //never be here
}
