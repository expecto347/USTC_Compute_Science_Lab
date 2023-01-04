#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include<string.h>
#include "bitstream.h"
#include "Huffman.h"
#include "unhuffman.h"

int main(int argc, char *argv[]) {
    if(argv[1][0] == '-' && argv[1][1] == 'e'){
        int len;
        char *str = read(argv[2], &len);
        HTREE *T = GetFrequency(str, len);
        CreateHuffmanTree(T);
        GetHuffmanCode(T);
        HEAD *head;
        head = (HEAD *)malloc(sizeof(HEAD));
        char *buffer_body = encode(str, len, T, head);
        char *bin_body = convertBinary(buffer_body, head->compress_size);
        // char *buffer_head = convertHead(head);
        char *HuffmanCode = catHuffmanCode(T, head);
        write(argv[3], HuffmanCode, bin_body, head);
    }
    else if(argv[1][0] == '-' && argv[1][1] == 'd'){
        HEAD *unhuffman;
        unhuffman = (HEAD *)malloc(sizeof(HEAD));
        unhuffman_read_head(argv[2], unhuffman);
        char *huffman_code = malloc(sizeof(char) * unhuffman->huffman_size);
        char *bin = malloc(sizeof(char) * unhuffman->compress_size / 8);
        unhuffman_read_body(argv[2], unhuffman, huffman_code, bin);
        unsigned char **huffman_code_table;
        huffman_code_table = splitHuffmanCode(huffman_code);
        char *bin_char = convertChar(bin, unhuffman->compress_size / 8);
        char *decode_char = unhuffman_decode(huffman_code_table, bin_char, unhuffman);
        write_file(argv[3], decode_char, unhuffman->origin_size / 8);
        return 0;
    }
    else{
        printf("Error: Wrong command!\n");
    }
}