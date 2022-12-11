#ifndef HUFFMAN_H
#define HUFFMAN_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bitstream.h"

typedef struct HTNode{
	unsigned char data;
    char *code;
	unsigned int freq;
	int parent,lchild,rchild;
}HTNode;

typedef struct HufffmanTree{
    HTNode *node;
    int n;
}HTREE;

void PrintHuffmanCode(HTREE *tree);
int find_root(HTREE *tree);
void HuffmanCode(HTREE *tree, int n, char *str);
void GetHuffmanCode(HTREE *tree);
void PrintHuffmanTree(HTREE *tree);
void CreateHuffmanTree(HTREE *tree);
void Select(HTREE *tree, int *s1, int *s2);
HTREE *GetFrequency(unsigned char *str, int len);
char *encode(unsigned char *buffer, int len, HTREE *tree, HEAD *head);
unsigned char *decode(unsigned char *buffer, HEAD *head, unsigned char **HuffmanCode);
unsigned char *catHuffmanCode(HTREE *T, HEAD *head);
unsigned char **splitHuffmanCode(unsigned char *buffer);
#endif