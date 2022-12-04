#include<stdio.h>
#include<math.h>
#include<stdlib.h>
#include "bitstream.h"
#include "Huffman.h"

int main(int argc, char *argv[]) {
    //read file
    Bitstream *bitstream = read(argv[1]);
    //Huffman
    int size;
    unsigned int size_u = pow(2, 4*2);
    int *input = bitstream_to_int(bitstream, 2, &size);
    node *table = frequency_table(input, size, 2);
    node *sort_table = sort_frequency_table(table, size_u);
    // print_frequency_table(sort_table, size_u);
    HuffmanTree *huffman_tree = build_huffman_tree(sort_table, size_u);
    char **huffman_code = malloc(sizeof(char *) * size_u);
    get_huffman_code(huffman_tree->root, "", huffman_code);
    printf("1\n");
    char *output = encode(input, size, huffman_code);
    printf("2\n");
    printf("%s\n", output);
    //write file
    int tmp;
    Bitstream *output_bitstream = char_to_bitstream(output, &tmp);
    return 0;
}