#include "userInterface.h"

void myMain(void) {
    
    int i;  
    for (i = 1; i < 30; i++) 
        myPrintf(i, "%d\n", i);

    myPrintk(0x7, "PB20000277___sunhaozhe\n"); // 你的学号、姓名
    
    return;
}
