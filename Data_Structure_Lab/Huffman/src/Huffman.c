#include<stdio.h>
#include<malloc.h>
#include<string.h>
#include <math.h>
#include "Huffman.h"
#include "bitstream.h"

// get the frequency of each character
node *frequency_table(int *input, int size, int unit) {
    int i;
    int size_u = pow(2, 4*unit);
    node *frequency_table = malloc(sizeof(node) * size_u);
    for(i = 0; i < size_u; i++) {
        frequency_table[i].symbol = i;
        frequency_table[i].freq = 0;
        frequency_table[i].left = NULL;
        frequency_table[i].right = NULL;
    }
    for(i = 0; i < size; i++) {
        frequency_table[input[i]].freq++;
    }
    return frequency_table;
}
// sort the frequency table
node *sort_frequency_table(node *frequency_table, int size) {
    int i, j;
    node *sort_frequency_table = malloc(sizeof(node) * size);
    for(i = 0; i < size; i++) {
        sort_frequency_table[i].symbol = frequency_table[i].symbol;
        sort_frequency_table[i].freq = frequency_table[i].freq;
        sort_frequency_table[i].left = NULL;
        sort_frequency_table[i].right = NULL;
    }
    for(i = 0; i < size; i++) {
        for(j = i + 1; j < size; j++) {
            if(sort_frequency_table[i].freq > sort_frequency_table[j].freq) {
                node tmp = sort_frequency_table[i];
                sort_frequency_table[i] = sort_frequency_table[j];
                sort_frequency_table[j] = tmp;
            }
        }
    }
    return sort_frequency_table;
}

// print the frequency table
void print_frequency_table(node *frequency_table, int size) {
    int i;
    for(i = 0; i < size; i++) {
        if(frequency_table[i].freq != 0) {
            printf("%d:%d\n", frequency_table[i].symbol, frequency_table[i].freq);
        }
    }
}

// Build the Huffman tree
HuffmanTree *build_huffman_tree(node *frequency_table, int size) {
    int i;
    HuffmanTree *huffman_tree = malloc(sizeof(HuffmanTree));
    huffman_tree->size = size;
    huffman_tree->root = malloc(sizeof(node));
    huffman_tree->root->left = NULL;
    huffman_tree->root->right = NULL;
    huffman_tree->root->freq = 0;
    huffman_tree->root->symbol = -1;
    for(i = 0; i < size; i++) {
        if(frequency_table[i].freq != 0) {
            node *new_node = malloc(sizeof(node));
            new_node->left = NULL;
            new_node->right = NULL;
            new_node->freq = frequency_table[i].freq;
            new_node->symbol = frequency_table[i].symbol;
            if(huffman_tree->root->left == NULL) {
                huffman_tree->root->left = new_node;
            } else if(huffman_tree->root->right == NULL) {
                huffman_tree->root->right = new_node;
            } else {
                node *tmp = huffman_tree->root->left;
                huffman_tree->root->left = new_node;
                new_node->left = tmp;
            }
        }
    }
    return huffman_tree;
}

// print the Huffman tree
void print_huffman_tree(node *node) {
    if(node != NULL) {
        printf("%d:%d\n", node->symbol, node->freq);
        print_huffman_tree(node->left);
        print_huffman_tree(node->right);
    }
    return;
}

// get the Huffman code
void get_huffman_code(node *node, char *code, char **huffman_code) {
    if(node->left == NULL && node->right == NULL) {
        huffman_code[node->symbol] = code;
        return;
    }
    else if(node->left == NULL || node->right == NULL)  
        printf("Wrong!\n");
    else {
        char *left_code = malloc(sizeof(char) * (strlen(code) + 2));
        char *right_code = malloc(sizeof(char) * (strlen(code) + 2));
        strcpy(left_code, code);
        strcpy(right_code, code);
        strcat(left_code, "0");
        strcat(right_code, "1");
        get_huffman_code(node->left, left_code, huffman_code);
        get_huffman_code(node->right, right_code, huffman_code);
    }
}

//encode the input
char *encode(int *input, int size, char **huffman_code) {
    int i;
    char *output = malloc(sizeof(char) * size * 4);
    for(i = 0; i < size; i++) {
        strcat(output, huffman_code[input[i]]);
    }
    return output;
}

//convert char to bitstream
Bitstream *char_to_bitstream(char *input, int *len) {
    *len = strlen(input);
    if(*len % 8){
        *len = *len + 8 - *len % 8; 
    }
    Bitstream *output = malloc(sizeof(Bitstream));
    output->size = *len / 8;
    
    char *bytes = malloc(sizeof(Byte) * output->size);
    output->bytes = (Byte *)bytes;
    //initialize the bytes
    for(int i = 0; i < output->size; i++) {
        bytes[i] = 0;
    }

    for(int i = 0; i < *len; i++) {
        if(input[i] == '1') {
            bytes[i / 8] = bytes[i / 8] | (1 << (7 - i % 8));
        }
        else {
            bytes[i / 8] = bytes[i / 8] & ~(1 << (7 - i % 8));
        }
    }

    for(int i = 0; i < 8; i++) {
        printf("%d ", input[i]);
    }
    printf("\n");
    printf("%x\n", bytes[0]);
    printf("%x\n", bytes[1]);
    printf("%x\n", bytes[2]);
    printf("%x\n", bytes[3]);
}

