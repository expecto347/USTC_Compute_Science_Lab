#include<string.h>
#include<stdio.h>
#include "Huffman.h"

char *unhuffman_decode(unsigned char **table, char *bin, HEAD *h){
    char *output = malloc(sizeof(char) * h->origin_size);
    char *buff = malloc(20);
    buff[0] = 0;
    int ptr = 0;
    int tmp = 0;
    for(int i = 0; i < h->compress_size; i++){
        buff[tmp] = bin[i];
        buff[tmp+1] = 0;
        tmp++;
        for(int j = 0; j < 256; j++){
            if(strcmp(table[j], buff) == 0){
                output[ptr] = j;
                ptr++;
                tmp = 0;
                break;
            }
        }
    }
    return output;
}