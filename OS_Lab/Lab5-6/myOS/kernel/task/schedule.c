#include "../../include/myPrintk.h"
#include "../../include/FCFS.h"
#include "../../include/SJF.h"
#include "../../include/PRIORITY.h"
#include "../../include/schedule.h"

void schedule(void){
    //功能：本函数负责调度任务
    switch (schedule_type){
        case FCFS:
            FCFS_schedule();
            break;
        case SJF:
            SJF_schedule();
            break;
        case PRIORITY:
            PRIORITY_schedule();
            break;
        default:
            myPrintk(0x7,"The schedule type is not exist!\n");
            break;
    }
}

void tskStart(myTCB* tsk){
    //功能：本函数负责将任务插入就绪队列
    switch (schedule_type){
        case FCFS:
            FCFS_tskStart(tsk);
            break;
        case SJF:
            SJF_tskStart(tsk);
            break;
        case PRIORITY:
            PRIORITY_tskStart(tsk);
            break;
        default:
            myPrintk(0x7,"The schedule type is not exist!\n");
            break;
    }
}

void tskEnd(void){
    //功能：本函数负责将任务从就绪队列中删除
    switch (schedule_type){
        case FCFS:
            FCFS_tskEnd();
            break;
        case SJF:
            SJF_tskEnd();
            break;
        case PRIORITY:
            PRIORITY_tskEnd();
            break;
        default:
            myPrintk(0x7,"The schedule type is not exist!\n");
            break;
    }
}

myTCB* nextTask(void){
    //功能：本函数负责获取下一个要运行的任务
    switch (schedule_type){
        case FCFS:
            return FCFS_nextTask();
            break;
        case SJF:
            return SJF_nextTask();
            break;
        case PRIORITY:
            return PRIORITY_nextTask();
            break;
        default:
            myPrintk(0x7,"The schedule type is not exist!\n");
            break;
    }
}