#include "../../include/task.h"
#include "../../include/myPrintk.h"
#include "../../include/tsk_arr.h"
#include "../../include/schedule.h"

int time;
void oneTickUpdateTsk(void){
    if(time % 1000) arrangeTsk(time/1000);
    time = time + 10;
}

void arrangeTsk(int time){
    myTCB* tsk = TCB_list->head;
    while(tsk){
        if(tsk->status == waiting && tsk->tskPara->arrTime == time){
            tsk->status = ready;
            tskStart(tsk);
        }
        tsk = tsk->next_myTCB;
    }
}