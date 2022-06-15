#ifndef __TASK_H_
#define __TASK_H_
#define ready 0 // ready 状态
#define waiting 1 // waiting 状态
#include "schedule.h"

typedef struct tskPara {
    unsigned long priority; //优先级
    unsigned long arrTime; //到达时间
    unsigned long exeTime; //执行时间
} tskPara;

typedef struct myTCB{
	unsigned long tid; // 任务ID
	unsigned long status; // 任务状态
    unsigned long* stack_top; // 栈顶指针
    unsigned long* stack_base; // 栈底指针
    struct myTCB* next_myTCB; //TCB_pool中的下一个myTCB
    struct myTCB* next_Queue; //排队队列中的下一个myTCB
    tskPara* tskPara; //任务参数
} myTCB;

typedef struct TCB_pool{
    myTCB* head;
    unsigned long size;
} TCB_pool;

typedef struct rdyQueue{
    myTCB* head;
    myTCB* tail;
    myTCB* idleTsk;
} rdyQueue; //就绪队列

void stack_init(unsigned long **stk, void (*task)(void));
void init_TCB_pool(void);
int createTsk(void (*tskBody)(void),tskPara *tskPara);
void destroyTsk(int tskIndex);
void context_switch(unsigned long **prevTskStkAddr, unsigned long *nextTskStk);
myTCB* get_Tsk(int tid);
void walk_TCB_list(void);
void walk_rdyQ(void);

void init_rdyQ(void);
int check_rdyQ(void);

extern unsigned long tid;
extern TCB_pool* TCB_list;
extern rdyQueue* rdyQ; //维护一个就绪队列
extern unsigned long* preTskStackPointer;
extern myTCB* currentTsk; //当前任务

#endif