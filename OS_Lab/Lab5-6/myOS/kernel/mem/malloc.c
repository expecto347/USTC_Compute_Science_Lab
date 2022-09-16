#include "../../include/mem.h"
#include "../../include/myPrintk.h"

unsigned long malloc(unsigned long size){
    //调用实现的dPartition或者是ePartition的alloc
    return dPartitionAlloc(UHandler,size);

}

unsigned long free(unsigned long start){
    //调用实现的dPartition或者是ePartition的free
    return dPartitionFree(UHandler,start);
}//面向用户使用的函数

unsigned long kmalloc(unsigned long size){
    return dPartitionAlloc(KHandler,size);
}

unsigned long kfree(unsigned long start){
    return dPartitionFree(KHandler,start);
}