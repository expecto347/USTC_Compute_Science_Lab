#include "../../include/myPrintk.h"
#define NULL 0


//dPartition 是整个动态分区内存的数据结构
typedef struct dPartition{
	unsigned long size;
	unsigned long firstFreeStart; 
} dPartition;	//共占8个字节

#define dPartition_size ((unsigned long)0x8)

void showdPartition(struct dPartition *dp){
	myPrintk(0x5,"dPartition(start=0x%x, size=0x%x, firstFreeStart=0x%x)\n", dp, dp->size,dp->firstFreeStart);
}


// EMB每一个block的数据结构，userdata可以暂时不用管。
typedef struct EMB{
	unsigned long size;
	union {
		unsigned long nextStart;    // if free: pointer to next block
        unsigned long userData;		// if allocated, blongs to user
	};	                           
} EMB;	//共占8个字节

#define EMB_size ((unsigned long)0x8)

void showEMB(struct EMB * emb){
	myPrintk(0x3,"EMB(start=0x%x, size=0x%x, nextStart=0x%x)\n", emb, emb->size, emb->nextStart);
}

unsigned long dPartitionInit(unsigned long start, unsigned long totalSize){
	/*功能：初始化内存。
	1.在地址start处，首先是要有dPartition结构体表示整个数据结构(也即句柄)。
	2.然后，一整块的EMB被分配（以后使用内存会逐渐拆分），在内存中紧紧跟在dP后面，然后dP的firstFreeStart指向EMB。
	3.返回start首地址(也即句柄)。
	注意有两个地方的大小问题：
		第一个是由于内存肯定要有一个EMB和一个dPartition，totalSize肯定要比这两个加起来大。
		第二个注意EMB的size属性不是totalsize，因为dPartition和EMB自身都需要要占空间。
	*/
	if(totalSize <= dPartition_size + EMB_size){
		myPrintk(0x7,"totalSize must  more than 16, Please enter a valid totalSize!"); //要求内存大小不得小于16
		return (unsigned long)NULL;
	}
	else{
		dPartition *new_dPartition = (dPartition *)start;
		EMB *emb_pointer;

		new_dPartition->firstFreeStart = start + 0x10;
		new_dPartition->size = totalSize; //初始化dPartition结构体的内容

		emb_pointer = (EMB *)new_dPartition->firstFreeStart;
		emb_pointer->size = totalSize - dPartition_size - EMB_size;//初始化总大小
		emb_pointer->nextStart = (unsigned long)NULL;//第一个指针需要指向NULL，完成链表的初始化，此时只有一个节点
		return start; //返回句柄
	}
}

void dPartitionWalkByAddr(unsigned long dp){
	/*功能：本函数遍历输出EMB 方便调试
	1.先打印dP的信息，可调用上面的showdPartition。
	2.然后按地址的大小遍历EMB，对于每一个EMB，可以调用上面的showEMB输出其信息
	*/
	EMB *EMB_pointer = (EMB *)((dPartition *)dp)->firstFreeStart;

	showdPartition((dPartition *)dp);

	for(;EMB_pointer != (unsigned long)NULL; EMB_pointer = (EMB *)EMB_pointer->nextStart){
		showEMB(EMB_pointer);
	}//打印EMB结构体的信息
}

//=================firstfit, order: address, low-->high=====================
/**
 * return value: addr (without overhead, can directly used by user)
**/

unsigned long dPartitionAllocFirstFit(unsigned long dp, unsigned long size){
	/*功能：分配一个空间
	1.使用firstfit的算法分配空间，当然也可以使用其他fit，不限制。
	2.成功分配返回首地址，不成功返回0
	3.从空闲内存块组成的链表中拿出一块供我们来分配空间(如果提供给分配空间的内存块空间大于size，我们还将把剩余部分放回链表中)，并维护相应的空闲链表以及句柄
	注意的地方：
		1.EMB类型的数据的存在本身就占用了一定的空间。
	*/
	EMB *EMB_pointer1 = (EMB *)((dPartition *)dp)->firstFreeStart; 
	EMB *EMB_pointer2 = (EMB *)((dPartition *)dp)->firstFreeStart;//获取EMB的首地址

	if(EMB_pointer1 == (EMB *)NULL) return (unsigned long)NULL; //已经没有任何的空闲的内存块了

	if(EMB_pointer1->size >= size){
		if(EMB_pointer1->size > size + EMB_size) {
			EMB *EMB_pointer3 = (EMB *)((unsigned long)EMB_pointer1 + size + EMB_size);

			EMB_pointer3->size = EMB_pointer1->size - size - EMB_size;
			EMB_pointer1->size = size;  //更新节点大小，这个方便对内存free的时候知道可以free多少
			EMB_pointer3->nextStart = EMB_pointer1->nextStart; 
			((dPartition *)dp)->firstFreeStart = (unsigned long)EMB_pointer3; //更改结构体，更新空闲状态

			return (unsigned long)EMB_pointer1 + EMB_size; //返回可用的内存地址，需要注意应该多加一个EMB块的大小
		}
		else{
			((dPartition *)dp)->firstFreeStart = (unsigned long)(EMB_pointer1->nextStart); 
			/*如果分配后剩余的内存大小不能够存放一个完整的EMB文件，那么就只能舍弃剩下的这一点内存了，
			并且不对size进行更新，方便回收的时候将这部分内存回收回去，以免造成浪费*/
			return (unsigned long)EMB_pointer1 + EMB_size;
		}
	}

	EMB_pointer2 = (EMB *)EMB_pointer2->nextStart;
	while(EMB_pointer2 != (unsigned long)NULL){
		if(EMB_pointer2->size >= size){
			if(EMB_pointer2->size > size + EMB_size) {
				EMB *EMB_pointer3 = (EMB *)((unsigned long)EMB_pointer2 + size + EMB_size);

				EMB_pointer3->nextStart = EMB_pointer2->nextStart;
				EMB_pointer3->size = EMB_pointer2->size - size -EMB_size; 
				EMB_pointer2->size = size;  //更新节点大小，这个方便对内存free的时候知道可以free多少
				EMB_pointer1->nextStart = (unsigned long)EMB_pointer3; //更改结构体，更新空闲状态

				return (unsigned long)EMB_pointer2 + EMB_size; //返回可用的内存地址，需要注意应该多加一个EMB块的大小
			}

			else{
				EMB_pointer1->nextStart = (unsigned long)(EMB_pointer2->nextStart); 
				/*如果分配后剩余的内存大小不能够存放一个完整的EMB文件，那么就只能舍弃剩下的这一点内存了，
				并且不对size进行更新，方便回收的时候将这部分内存回收回去，以免造成浪费*/
				return (unsigned long)EMB_pointer2 + EMB_size;
			}
		}

		EMB_pointer2 = (EMB *)EMB_pointer2->nextStart;
		EMB_pointer1 = (EMB *)EMB_pointer1->nextStart; //更新地址
	}

	return (unsigned long)NULL; //没有可用的空闲内存，返回NULL地址表示分配失败

}

unsigned long dPartitionFreeFirstFit(unsigned long dp, unsigned long start){
	/*功能：释放一个空间
	1.按照对应的fit的算法释放空间
	2.注意检查要释放的start~end这个范围是否在dp有效分配范围内
		返回1 没问题
		返回0 error
	3.需要考虑两个空闲且相邻的内存块的合并
	*/

	EMB *EMB_pointer1 = (EMB *)((dPartition *)dp)->firstFreeStart;
	EMB *EMB_pointer2 = (EMB *)((dPartition *)dp)->firstFreeStart;
	EMB *EMB_pointer3 = (EMB *)(start-EMB_size);
	dPartition *dp_pointer = (dPartition *)dp;//声明几个结构体指针类型

	// myPrintk(0x7,"0x%x\n",(unsigned long)EMB_pointer3);
	// myPrintk(0x7,"0x%x\n",start);

	if(start < (dp + dPartition_size) || start > (dp + dPartition_size + EMB_size + dp_pointer->size)){
		return 0;//检查释放的start是否在dp有效分配范围内，因为end是由操作系统记录的，所以只要保证start是正确的即可
	}

	if(EMB_pointer3 < EMB_pointer1){
		if((unsigned long)EMB_pointer1 == ((unsigned long)EMB_pointer3 + 0x8 + EMB_pointer3->size)){
			dp_pointer->firstFreeStart = (unsigned long)EMB_pointer3;
			EMB_pointer3->nextStart = EMB_pointer1->nextStart;
			EMB_pointer3->size = EMB_pointer3->size + EMB_size + EMB_pointer1->size; //将空闲区块合并
			return 1;
		}
		else{
			dp_pointer->firstFreeStart = (unsigned long)EMB_pointer3;
			EMB_pointer3->nextStart = (unsigned long)EMB_pointer1;
			return 1;
		}
	}

	EMB_pointer2 = (EMB *)EMB_pointer2->nextStart;
	while(EMB_pointer2 != (EMB *)NULL){
		if(EMB_pointer3 > EMB_pointer1 && EMB_pointer3 < EMB_pointer2){
			if((unsigned long)EMB_pointer2 == ((unsigned long)EMB_pointer3 + 0x8 + EMB_pointer3->size)){
				if((unsigned long)EMB_pointer3 == ((unsigned long)EMB_pointer1 + 0x8 + EMB_pointer1->size)){
					EMB_pointer1->size = EMB_pointer1->size + EMB_pointer2->size + EMB_pointer3->size + 2*EMB_size; //正确计算大小，需要注意的是有两个EMB_size
					EMB_pointer1->nextStart = EMB_pointer2->nextStart;
					return 1; //处理两边都是空闲情况下的融合
				}
				else {
					EMB_pointer1->nextStart = (unsigned long)EMB_pointer3;
					EMB_pointer3->nextStart = EMB_pointer2->nextStart;
					EMB_pointer3->size = EMB_pointer3->size + EMB_size + EMB_pointer2->size; //将空闲区块合并
					return 1;
				}
			}
			else if((unsigned long)EMB_pointer3 == ((unsigned long)EMB_pointer1 + 0x8 + EMB_pointer1->size)){
				EMB_pointer1->size = EMB_pointer1->size + EMB_pointer3->size + EMB_size; //正确计算大小
				EMB_pointer1->nextStart = (unsigned long)EMB_pointer2;
				return 1; //处理只有左边是空闲状态的情况
			}
			else{
				EMB_pointer1->nextStart = (unsigned long)EMB_pointer3;
				EMB_pointer3->nextStart = (unsigned long)EMB_pointer2; //一般情况下就是简单的插入操作
				return 1;
			}
		}
		EMB_pointer1 = (EMB *)EMB_pointer1->nextStart;
		EMB_pointer2 = (EMB *)EMB_pointer2->nextStart;
	}
	if((unsigned long)EMB_pointer3 == ((unsigned long)EMB_pointer1 + 0x8 + EMB_pointer1->size)){
		EMB_pointer1->size = EMB_pointer1->size + EMB_size + EMB_pointer3->size;
		return 1; //将最后一块内存融合
	}
	else{
		EMB_pointer1->nextStart = (unsigned long)EMB_pointer3;
		EMB_pointer3->nextStart = (unsigned long)NULL;// 如果到最后都没有正确释放内存，那就插入链表末尾；
		return 1;
	}
}

//wrap: we select firstFit, you can select another one
//user need not know this
unsigned long dPartitionAlloc(unsigned long dp, unsigned long size){
	return dPartitionAllocFirstFit(dp,size);
}

unsigned long dPartitionFree(unsigned long	 dp, unsigned long start){
	return dPartitionFreeFirstFit(dp,start);
}
