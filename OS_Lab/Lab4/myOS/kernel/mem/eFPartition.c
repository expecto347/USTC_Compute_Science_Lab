#include "../../include/myPrintk.h"
// 一个EEB表示一个空闲可用的Block
#define NULL (void*)0
typedef struct EEB {
	unsigned long next_start;
}EEB;	//占4个字节

#define EEB_size 4

void showEEB(struct EEB *eeb){
	myPrintk(0x7,"EEB(start=0x%x, next=0x%x)\n", eeb, eeb->next_start);
}

//eFPartition是表示整个内存的数据结构
typedef struct eFPartition{
	unsigned long totalN;
	unsigned long perSize;  //unit: byte	
	unsigned long firstFree;
}eFPartition;	//占12个字节

#define eFPartition_size 12

void showeFPartition(struct eFPartition *efp){
	myPrintk(0x5,"eFPartition(start=0x%x, totalN=0x%x, perSize=0x%x, firstFree=0x%x)\n", efp, efp->totalN, efp->perSize, efp->firstFree);
}

void eFPartitionWalkByAddr(unsigned long EFPHandler){
	/*功能：本函数是为了方便查看和调试的。
	1、打印eFPartiiton结构体的信息，可以调用上面的showeFPartition函数。
	2、遍历每一个EEB，打印出他们的地址以及下一个EEB的地址（可以调用上面的函数showEEB）
	*/
	EEB *EEB_pointer = (EEB *)(EFPHandler + 0xc); 

	showeFPartition((eFPartition *)EFPHandler); //打印eFPartiiton结构体的信息

	for(;EEB_pointer != NULL;EEB_pointer = (EEB *)EEB_pointer->next_start){
		showEEB(EEB_pointer);
	} //循环打印EEB的信息，直到指针尾部；

	//To do:判断一下这个EFPHandler是否合法？是否分配了内存；
}


unsigned long eFPartitionTotalSize(unsigned long perSize, unsigned long n){
	/*功能：计算占用空间的实际大小，并将这个结果返回
	1.根据参数persize（每个大小）和n个数计算总大小，注意persize的对齐。
		例如persize是31字节，你想8字节对齐，那么计算大小实际代入的一个块的大小就是32字节。
	2.同时还需要注意“隔离带”EEB的存在也会占用4字节的空间。
		typedef struct EEB {
			unsigned long next_start;
		}EEB;	
	3.最后别忘记加上eFPartition这个数据结构的大小，因为它也占一定的空间。
	4.本次实验采用4字节对齐的方式，来最大化节约空间。
	*/
	unsigned long Actual_PerSize;

	if(perSize%4 == 0){
		Actual_PerSize = perSize; //如果恰好整除了那么就直接采样给定的perSize
	}
	else{
		Actual_PerSize = 4*(perSize/4 + 1);//不然就设定成最小的能够以4字节对齐的perSize
	}

	return n*(Actual_PerSize + EEB_size) + eFPartition_size; //返回总共所需要的Size，注意需要包含EEB和eFPartition的大小
} 

unsigned long eFPartitionInit(unsigned long start, unsigned long perSize, unsigned long n){
	/*功能：初始化内存
	1.需要创建一个eFPartition结构体，需要注意的是结构体的perSize不是直接传入的参数perSize，需要对齐。结构体的next_start也需要考虑一下其本身的大小。
	2.就是先把首地址start开始的一部分空间作为存储eFPartition类型的空间
	3.然后再对除去eFPartition存储空间后的剩余空间开辟若干连续的空闲内存块，将他们连起来构成一个链。注意最后一块的EEB的nextstart应该是0
	4.需要返回一个句柄，也即返回eFPartition *类型的数据
	注意的地方：
		1.EEB类型的数据的存在本身就占用了一定的空间。
	*/
	unsigned long Actual_PerSize;

	if(perSize%4 == 0){
		Actual_PerSize = perSize; //如果恰好整除了那么就直接采样给定的perSize
	}
	else{
		Actual_PerSize = 4*(perSize/4 + 1);//不然就设定成最小的能够以4字节对齐的perSize
	}

	eFPartition *new_eFPartition;

	new_eFPartition = (eFPartition *)start; //将首地址存储eFpartition结构体的信息

	new_eFPartition->perSize = Actual_PerSize;
	new_eFPartition->firstFree = start + 0xc;
	new_eFPartition->totalN = n*(Actual_PerSize + EEB_size) + eFPartition_size; //初始化各项参数

	EEB *EEB_pointer = (EEB *)new_eFPartition->firstFree; //指针指向第一个可用的EEB模块

	for(int i = n; i-- ;i != 1){
		EEB_pointer->next_start = (unsigned long)EEB_pointer + Actual_PerSize + EEB_size;
		EEB_pointer = (EEB *)EEB_pointer->next_start;
	}
	EEB_pointer->next_start = NULL; //完成EEB模块的初始化，使得初始时候每个模块都是可用的模块，并且指向正确的位置；
}


unsigned long eFPartitionAlloc(unsigned long EFPHandler){
	/*功能：分配一个空间
	1.本函数分配一个空闲块的内存并返回相应的地址，EFPHandler表示整个内存的首地址
	2.事实上EFPHandler就是我们的句柄，EFPHandler作为eFPartition *类型的数据，其存放了我们需要的firstFree数据信息
	3.从空闲内存块组成的链表中拿出一块供我们来分配空间，并维护相应的空闲链表以及句柄
	注意的地方：
		1.EEB类型的数据的存在本身就占用了一定的空间。
	*/
	eFPartition *eFPartition1;
	EEB *eeb;

	eFPartition1 = (eFPartition *)EFPHandler;
	if((eeb = (EEB *)eFPartition1->firstFree) == NULL){
		return NULL;
	} //使得eeb指向有第一个空闲位置的结构体指针，并且判断他是否是零，如果是零即没有空闲位置了，那么返回NULL；
	else{
		eFPartition1->firstFree = eeb->next_start;
		return (unsigned long)eeb + 0x4;
	}//否则返回可用的内存地址
}


unsigned long eFPartitionFree(unsigned long EFPHandler,unsigned long mbStart){
	/*功能：释放一个空间
	1.mbstart将成为第一个空闲块，EFPHandler的firstFree属性也需要相应大的更新。
	2.同时我们也需要更新维护空闲内存块组成的链表。
	*/
	eFPartition *eFPartition2;
	EEB *eeb;

	eFPartition2 = (eFPartition *)EFPHandler;
	eeb = (EEB *)(mbStart - 0x4);

	eeb->next_start = eFPartition2->firstFree;
	eFPartition2->firstFree = (unsigned long)eeb; //将eeb指向第一个firstfree上，并且将firstfree更新为这个刚释放的EEB上面，即将这块内存放在了链表的开头

	return EFPHandler; //不知道返回啥，感觉没啥好返回的，随便瞎鸡儿返回一个开头句柄；
}
