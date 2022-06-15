#include "../../../include/PRIORITY.h"
#include "../../../include/myPrintk.h"

myTCB* currentTsk;//当前任务
void PRIORITY_schedule(void){
    myTCB* tsk = PRIORITY_nextTask();

    if(tsk->tid == 0 && currentTsk->tid == 0 && currentTsk != 0) return; //如果当前任务以及下一个任务都是idle任务，则不做任何操作
    else if(currentTsk == 0){
        currentTsk = tsk;
        rdyQ->idleTsk->stack_top = rdyQ->idleTsk->stack_base;
        stack_init(&rdyQ->idleTsk->stack_top,idleTsk_func);
        context_switch(&preTskStackPointer, tsk->stack_top); //上下文切换，将当前任务的栈指针存储在preTskStackPointer中，将下一个任务的栈指针传入，进行上下文切换
    }
    else if(tsk->tskPara->priority > currentTsk->tskPara->priority || currentTsk->status == killing){
        currentTsk = tsk;
        rdyQ->idleTsk->stack_top = rdyQ->idleTsk->stack_base;
        stack_init(&rdyQ->idleTsk->stack_top,idleTsk_func);
        context_switch(&currentTsk->stack_top, tsk->stack_top); //上下文切换，将当前任务的栈指针存储在currentTsk->stack_top中，将下一个任务的栈指针传入，进行上下文切换
    }
    else{
        return;
    }
}

void PRIORITY_tskStart(myTCB *tsk){
    //将任务插入就绪队列
    if(tsk->status == ready) myPrintk(0x5,"tskStart: task is already start!\n");
    else{
        tsk->status = ready;
        if(check_rdyQ()){
            rdyQ->head = tsk;
        }
        else{
            rdyQ->tail->next_Queue = tsk;
        }   
        rdyQ->tail = tsk; //将task插入尾部
        tsk->next_Queue = 0;
    }
}
void PRIORITY_tskEnd(void){
    //将任务从就绪队列中删除
    destroyTsk(currentTsk->tid);
    currentTsk->status = killing;

    myTCB* tmp;
    if(rdyQ->head == currentTsk){
        rdyQ->head = currentTsk->next_Queue;
    }
    else{
        tmp = rdyQ->head;
        while(tmp->next_Queue != currentTsk){
            tmp = tmp->next_Queue;
        }
        tmp->next_Queue = currentTsk->next_Queue;
    }
    if(rdyQ->tail == currentTsk){
        rdyQ->tail = tmp;
    }

    PRIORITY_schedule();
}
myTCB* PRIORITY_nextTask(void){
    //寻找队伍中最高优先级的任务，不允许同等优先级任务的存在
    if(check_rdyQ()) return rdyQ->idleTsk; //如果任务队列为空，则返回idle任务
    else{
        myTCB* tmp;
        myTCB* max;
        tmp = rdyQ->head->next_Queue;
        max = rdyQ->head;

        while(tmp != 0){
            if(tmp->tskPara->priority > max->tskPara->priority){
                max = tmp;
            }
            tmp = tmp->next_Queue;
        }
        return max;
    }
}