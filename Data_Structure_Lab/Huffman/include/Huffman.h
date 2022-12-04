#ifndef HUFFMAN_H
#define HUFFMAN_H

#include "bitstream.h"
typedef struct node{
    int code;
	int symbol;
	int freq;
    struct node *left;
    struct node *right;
}node;

typedef struct huffman_tree{
    node *root;
    int size;
}HuffmanTree;

typedef struct frequency_table{
    int frequency;
    int symbol;
}FrequencyTable;

void print_frequency_table(node *frequency_table, int size);
node *sort_frequency_table(node *frequency_table, int size);
node *frequency_table(int *input, int size, int unit);
void print_huffman_tree(node *node);
HuffmanTree *build_huffman_tree(node *frequency_table, int size);
Bitstream *char_to_bitstream(char *input, int *len);
char *encode(int *input, int size, char **huffman_code);
void get_huffman_code(node *node, char *code, char **huffman_code);
#endif