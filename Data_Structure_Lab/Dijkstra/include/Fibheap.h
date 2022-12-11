#ifndef _FIBHEAP_H_
#define _FIBHEAP_H_

#include "ansidecl.h"
#include<stdio.h>

typedef long fibheapkey_t;

typedef struct fibheap
{
  size_t nodes;
  struct fibnode *min;
  struct fibnode *root;
} *fibheap_t;

typedef struct fibnode
{
  struct fibnode *parent;
  struct fibnode *child;
  struct fibnode *left;
  struct fibnode *right;
  fibheapkey_t key;
  void *data;
#ifdef __GNUC__
  __extension__ unsigned long int degree : 31;
  __extension__ unsigned long int mark : 1;
#else
  unsigned int degree : 31;
  unsigned int mark : 1;
#endif
} *fibnode_t;

extern fibheap_t fibheap_new PARAMS ((void));
extern fibnode_t fibheap_insert PARAMS ((fibheap_t, fibheapkey_t, void *));
extern int fibheap_empty PARAMS ((fibheap_t));
extern fibheapkey_t fibheap_min_key PARAMS ((fibheap_t));
extern fibheapkey_t fibheap_replace_key PARAMS ((fibheap_t, fibnode_t,
						 fibheapkey_t));
extern void *fibheap_replace_key_data PARAMS ((fibheap_t, fibnode_t,
					       fibheapkey_t, void *));
extern void *fibheap_extract_min PARAMS ((fibheap_t));
extern void *fibheap_min PARAMS ((fibheap_t));
extern void *fibheap_replace_data PARAMS ((fibheap_t, fibnode_t, void *));
extern void *fibheap_delete_node PARAMS ((fibheap_t, fibnode_t));
extern void fibheap_delete PARAMS ((fibheap_t));
extern fibheap_t fibheap_union PARAMS ((fibheap_t, fibheap_t));

#endif /* _FIBHEAP_H_ */
