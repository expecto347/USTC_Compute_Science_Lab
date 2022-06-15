#include "../myOS/userInterface.h"   //interface from kernel

#include "shell.h"
#include "memTestCase.h"

void wallClock_hook_main(void){
	int _h, _m, _s;
	char hhmmss[]="hh:mm:ss\0\0\0\0";

	getWallClock(&_h,&_m,&_s);
	sprintf(hhmmss,"%02d:%02d:%02d",_h,_m,_s);
	put_chars(hhmmss,0x7E,24,72);
}

void doSomeTestBefore(void){		
	setWallClock(0,0,0);		//set time 00:00:00
    setWallClockHook(&wallClock_hook_main);
	tick_hook = &oneTickUpdateTsk;
}

void myMain(void){    
    // clear_screen();
	myPrintf(0x7,"This is the myMain task!\n");
    doSomeTestBefore();
	myPrintf(0x7,"Initialize the myOS!\n");
	initShell();
    memTestCaseInit();
    startShell();
    return;
}

void Task_1(void){
	int color;
	color = 0x1;
	myPrintf(color,"*********************************************************\n");
	myPrintf(color,"****************This is the Task_1 task!*****************\n");
	myPrintf(color,"*********************************************************\n");
	myPrintf(color,"\n");
	return;
}

void Task_2(void){
	int color;
	color = 0x2;
	myPrintf(color,"*********************************************************\n");	
	myPrintf(color,"****************This is the Task_2 task!*****************\n");
	myPrintf(color,"*********************************************************\n");
	myPrintf(color,"\n");
	return;
}

void Task_3(void){
	int color;
	color = 0x3;
	myPrintf(color,"*********************************************************\n");
	myPrintf(color,"****************This is the Task_3 task!*****************\n");
	myPrintf(color,"*********************************************************\n");
	myPrintf(color,"\n");
	return;
}


void scheduleInit(void){
	int myMain_tid, Task_1_tid, Task_2_tid, Task_3_tid;
	tskPara *myMain_tskPara, *Task_1_tskPara, *Task_2_tskPara, *Task_3_tskPara;

	myMain_tskPara = (tskPara*)malloc(sizeof(tskPara));
	Task_1_tskPara = (tskPara*)malloc(sizeof(tskPara));
	Task_2_tskPara = (tskPara*)malloc(sizeof(tskPara));
	Task_3_tskPara = (tskPara*)malloc(sizeof(tskPara));
	//为taskPara分配空间

	{
		myMain_tskPara->arrTime = 0;
		myMain_tskPara->exeTime = 0;
		myMain_tskPara->priority = 0;
	}

	{
		Task_1_tskPara->arrTime = 10;
		Task_1_tskPara->exeTime = 0;
		Task_1_tskPara->priority = 1;
	}

	{
		Task_2_tskPara->arrTime = 20;
		Task_2_tskPara->exeTime = 0;
		Task_2_tskPara->priority = 2;
	}

	{
		Task_3_tskPara->arrTime = 30;
		Task_3_tskPara->exeTime = 0;
		Task_3_tskPara->priority = 3;
	}

	myMain_tid = createTsk(myMain,myMain_tskPara); //创建myMain任务
	Task_1_tid = createTsk(Task_1,myMain_tskPara); //创建Task_1任务
	Task_2_tid = createTsk(Task_2,myMain_tskPara); //创建Task_2任务
	Task_3_tid = createTsk(Task_3,myMain_tskPara); //创建Task_3任务

	tskStart(get_Tsk(myMain_tid)); //启动myMain任务
	tskStart(get_Tsk(Task_1_tid)); //启动Task_1任务
	tskStart(get_Tsk(Task_2_tid)); //启动Task_2任务
	tskStart(get_Tsk(Task_3_tid)); //启动Task_3任务

	walk_rdyQ();

	//依次添加任务到就绪队列
	while (1) schedule(); //进入FCFS调度程序

}