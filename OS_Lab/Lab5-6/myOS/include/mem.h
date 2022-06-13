#ifndef __MEM_H__
#define __MEM_H__
//TODO: seperate user interface and kernel interface
unsigned long dPartitionInit(unsigned long start, unsigned long size);
unsigned long dPartitionAlloc(unsigned long dp, unsigned long size);
unsigned long dPartitionFree( unsigned long dp, unsigned long start);

void dPartitionWalkByAddr(unsigned long dp);

unsigned long eFPartitionInit(unsigned long start, unsigned long perSize, unsigned long n);
unsigned long eFPartitionTotalSize(unsigned long perSize, unsigned long n);
unsigned long eFPartitionAlloc(unsigned long EFPHandler);
unsigned long eFPartitionFree(unsigned long EFPHandler,unsigned long mbStart);

void eFPartitionWalkByAddr(unsigned long efp);

void pMemInit(void);
void KernelMemInit(void);
void UserMemInit(unsigned long size);

unsigned long pMemHandler;
extern unsigned long KHandler;
extern unsigned long UHandler;
//TODO: seperate kernel heap and user heap
#endif
