#include "../../include/task.h"
#include "../../include/myPrintk.h"
#include "../../include/tsk_arr.h"
#include "../../include/schedule.h"

int time;
void oneTickUpdateTsk(void){
    if(time % 1000) arrangeTsk();
    time = time + 10;
}

void arrangeTsk(){
    myTCB* tsk = TCB_list->head;
    while(tsk){
        if((tsk->status) == waiting && (1000 * (tsk->tskPara->arrTime) == time)){
            tskStart(tsk);
        }
        tsk = tsk->next_myTCB;
    }
}