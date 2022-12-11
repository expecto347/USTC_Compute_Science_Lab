#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
#include "bitstream.h"
#include "Huffman.h"

int main(int argc, char *argv[]) {
    int len;
    char *str = read(argv[1], &len);
    HTREE *T = GetFrequency(str, len);
    CreateHuffmanTree(T);
    //PrintHuffmanTree(T);
    GetHuffmanCode(T);
    //PrintHuffmanCode(T);
    HEAD *head;
    head = (HEAD *)malloc(sizeof(HEAD));
    char *buffer_body = encode(str, len, T, head);
    char *bin_body = convertBinary(buffer_body, head->compress_size);
    // char *buffer_head = convertHead(head);
    char *HuffmanCode = catHuffmanCode(T, head);
    write(argv[2], HuffmanCode, bin_body, head);
    return 0;
}