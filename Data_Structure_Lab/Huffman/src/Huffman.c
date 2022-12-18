#include "Huffman.h"
#include "bitstream.h"

HTREE *GetFrequency(unsigned char *str, int len){ //统计字符出现频率
    int *freq = (int *)malloc(sizeof(int) * 256);
    
    //Initialize the frequency array
    for(int i = 0; i < 256; i++){
        freq[i] = 0;
    }

    //Count the frequency of each character
    for(int i = 0; i < len; i++){
        freq[str[i]]++;
    }

    HTNode *T = (HTNode *)malloc(sizeof(HTNode) * 512);
    for(int i = 0; i < 256; i++){
        T[i].data = i;
        T[i].freq = freq[i];
        T[i].parent = T[i].lchild = T[i].rchild = -1;
        T[i].code = NULL;
    }

    for(int i = 256; i < 512; i++){
        T[i].data = 0;
        T[i].freq = 0xffffffff;
        T[i].parent = T[i].lchild = T[i].rchild = -1;
        T[i].code = NULL;
    }

    HTREE *tree = (HTREE *)malloc(sizeof(HTREE));
    tree->node = T;
    tree->n = 256;

    return tree;                               
}

// Select two nodes with the smallest frequency
void Select(HTREE *tree, int *s1, int *s2){
    unsigned int min1 = 0xffffffff, min2 = 0xffffffff;
    for(int i = 0; i < 2*tree->n - 1; i++){
        if(tree->node[i].parent == -1){
            if(tree->node[i].freq < min1){
                min2 = min1;
                *s2 = *s1;
                min1 = tree->node[i].freq;
                *s1 = i;
            }else if(tree->node[i].freq < min2){
                min2 = tree->node[i].freq;
                *s2 = i;
            }
        }
    }
}

// Create Huffman Tree
void CreateHuffmanTree(HTREE *tree){
    int s1, s2;
    for(int i = tree->n; i < 2 * tree->n - 1; i++){
        Select(tree, &s1, &s2);
        tree->node[s1].parent = i;
        tree->node[s2].parent = i;
        tree->node[i].lchild = s1;
        tree->node[i].rchild = s2;
        tree->node[i].freq = tree->node[s1].freq + tree->node[s2].freq;
        tree->node[i].parent = -1;
    }
}

// Print the Huffman Tree
void PrintHuffmanTree(HTREE *tree){
    for(int i = 0; i < 2 * tree->n - 1; i++){
        printf("data: %x, freq: %d, parent: %d, lchild: %d, rchild: %d\n", tree->node[i].data, tree->node[i].freq, tree->node[i].parent, tree->node[i].lchild, tree->node[i].rchild);
    }
}

// Get the Huffman Code
void GetHuffmanCode(HTREE *tree){
    int root = find_root(tree);
    tree->node[root].code = "";
    HuffmanCode(tree, root, "");
}

int find_root(HTREE *tree){
    for(int i = 0; i < 2 * tree->n - 1; i++){
        if(tree->node[i].parent == -1){
            return i;
        }
    }
    return -1;
}

// Huffman Code
void HuffmanCode(HTREE *tree, int n, char *str){
    if(tree->node[n].lchild == -1 && tree->node[n].rchild == -1){
        tree->node[n].code = str;
        return;
    }
    else{
        char *str1 = (char *)malloc(sizeof(char) * strlen(str) + 1);
        strcpy(str1, str);
        strcat(str1, "0");
        HuffmanCode(tree, tree->node[n].lchild, str1);

        char *str2 = (char *)malloc(sizeof(char) * strlen(str) + 1);
        strcpy(str2, str);
        strcat(str2, "1");
        HuffmanCode(tree, tree->node[n].rchild, str2);
    }
    return;
}

// Print the Huffman Code
void PrintHuffmanCode(HTREE *tree){
    for(int i = 0; i < tree->n; i++){
        printf("data: %x, code: %s\n", tree->node[i].data, tree->node[i].code);
    }
}

// encode the file
char *encode(unsigned char *buffer, int len, HTREE *tree, HEAD *head){
    char *output = malloc(sizeof(char) * len * 8 + 8);
    int ptr = 0; // the pointer of the output
    head->origin_size = 8 * len;
    for(int i = 0; i < len; i++){
        for(int j = 0; j < strlen(tree->node[buffer[i]].code); j++){
            output[ptr] = tree->node[buffer[i]].code[j];
            ptr++;
        }
    }

    output[ptr] = '\0';

    // 8bit alignment
    int n = strlen(output);
    int m = n % 8;
    if(m != 0){
        for(int i = 0; i < 8 - m; i++){
            output[ptr] = '0';
            ptr++;
        }
    }
    output[ptr] = '\0';
    head->compress_size = strlen(output); //bit
    return output;
}

// decode the file
// the len is the length of the buffer
unsigned char *decode(unsigned char *buffer, HEAD *head, unsigned char **HuffmanCode){
    unsigned char *output = malloc(sizeof(unsigned char) * head->origin_size/8);
    unsigned char *tmp = malloc(sizeof(unsigned char) * head->origin_size/8);
    tmp[0] = 0;
    int k = 0;
    for(int i = 0; i < strlen(buffer); i++){
        tmp = strncat(tmp, buffer + i,1); // add a bit to the tmp

        // find the character
        for(unsigned char j = 0; j < 256; j++){
            if(strcmp(HuffmanCode[j], tmp) == 0){
                output[k] = j;
                tmp = "";
                break;
            }
        }
    }
    return output;
}

// cat all the huffman code from 0 - 255
unsigned char *catHuffmanCode(HTREE *T, HEAD *head){
    int len = 256; // "\0"
    // string length
    for(int i = 0; i < 256; i++){
        len += strlen(T->node[i].code);
    }
    
    head->huffman_size = len;
    unsigned char *output = malloc(sizeof(unsigned char) * len);

    int n = 0;
    for(int i = 0; i < 256; i++){
        for(int j = 0; j < strlen(T->node[i].code) + 1; j++){
            output[n] = T->node[i].code[j];
            n++;
        }
    }
    return output;
}

// split the huffman code
unsigned char **splitHuffmanCode(unsigned char *buffer){
    unsigned char **output = malloc(sizeof(unsigned char *) * 256);
    int n = 0;
    for(int i = 0; i < 256; i++){
        output[i] = malloc(sizeof(unsigned char) * strlen(buffer + n) + 1);
        int j = 0;
        while(buffer[n] != 0){
            output[i][j] = buffer[n];
            n++;
            j++;
        }
        output[i][j] = 0;
        n++;
    }
    return output;
}