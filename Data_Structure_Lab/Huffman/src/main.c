#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
#include "bitstream.h"
#include "Huffman.h"
#include "unhuffman.h"

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
    HEAD *unhuffman;
    unhuffman = (HEAD *)malloc(sizeof(HEAD));
    char *huffman_code = malloc(sizeof(char) * head->huffman_size);
    char *bin = malloc(sizeof(char) * head->compress_size / 8);
    unhuffman_read(argv[2], unhuffman, huffman_code, bin);
    unsigned char **huffman_code_table;
    huffman_code_table = splitHuffmanCode(huffman_code);
    char *bin_char = convertChar(bin, unhuffman->compress_size / 8);
    char *decode_char = unhuffman_decode(huffman_code_table, bin_char, unhuffman);
    write_file(argv[3], decode_char, unhuffman->origin_size / 8);
    return 0;
}