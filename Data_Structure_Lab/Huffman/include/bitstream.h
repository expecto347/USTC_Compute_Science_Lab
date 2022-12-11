#ifndef BITSTREAM_H
#define BITSTREAM_H

typedef struct head{
    int origin_size; //bit
    int compress_size; //bit
    int huffman_size; //char number
}HEAD;

void write(char *filename, char *huffman, char *bin, HEAD *h);
unsigned char *read(char *filenam, int *len);
char *convertHead(HEAD *head);
unsigned char *convertBinary(char *buffer, int len);
char *convertChar(unsigned char *buffer, int len);
#endif