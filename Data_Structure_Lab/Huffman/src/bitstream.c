#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include "bitstream.h"
#include "Huffman.h"

// read the binary file to char format
unsigned char *read(char *filename, int *len){
    FILE *fp = fopen(filename, "rb");
    fseek(fp, 0, SEEK_END);
    int size = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    unsigned char *buffer = malloc(sizeof(char) * size);
    fread(buffer, 1, size, fp);
    fclose(fp);
    *len = size;
    return buffer;
}

// write the char format to binary file
void write(char *filename, char *huffman, char *bin, HEAD *h){
    FILE *fp = fopen(filename, "wb");
    fwrite(h, sizeof(HEAD), 1, fp);
    fwrite(huffman, 1, h->huffman_size, fp); // write the head and huffman code
    fwrite(bin, 1, h->compress_size/8, fp); // write the body
    fclose(fp);
}

// convert the HEAD struct to char format
char *convertHead(HEAD *head){
    char *output = malloc(sizeof(char) * (sizeof(HEAD) + 1));
    output[0] = 0;
    memcpy(output, head, sizeof(HEAD));
    return output;
}

// convert the char type to binary type
unsigned char *convertBinary(char *buffer, int len){
    unsigned char *output = malloc(sizeof(unsigned char) * len / 8);
    for(int i = 0; i < len; i++){
        output[i/8] = output[i/8] << 1;
        output[i/8] = output[i/8] | (buffer[i] - '0');
    }
    return output;
}

// convert the binary type to char type
char *convertChar(unsigned char *buffer, int len){
    char *output = malloc(sizeof(char) * len * 8);
    output = "";
    for(int i = 0; i < len; i++){
        for(int j = 0; j < 8; j++){
            char tmp[2];
            tmp[0] = (buffer[i] >> (7 - j)) & 1;
            tmp[1] = 0;
            output = strcat(output, tmp);
        }
    }
    return output;
}
