#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include "bitstream.h"

Bitstream *read(char *filename) {
    FILE *fp = fopen(filename, "rb");
    if (fp == NULL) {
        printf("Error opening file!\n");
        return NULL;
    }
    fseek(fp, 0, SEEK_END);
    long fsize = ftell(fp);
    fseek(fp, 0, SEEK_SET);
    Byte *buffer = malloc(fsize);
    fread(buffer, fsize, 1, fp);
    fclose(fp);
    Bitstream *bitstream = malloc(sizeof(Bitstream));
    bitstream->bytes = buffer;
    bitstream->size = fsize;
    return bitstream;
}

void write(char *filename, Bitstream *bitstream) {
    FILE *fp = fopen(filename, "wb");
    if (fp == NULL) {
        printf("Error opening file!\n");
        return;
    }
    fwrite(bitstream->bytes, bitstream->size, 1, fp);
    fclose(fp);
}

// convert bitstream to int* according to the size of the unit
int *bitstream_to_int(Bitstream *bitstream, int unit, int *size) {
    int i;
    char *tmp = malloc(sizeof(char) * (bitstream->size * 2 + unit));
    for(i = 0; i < bitstream->size; i++) {
        Byte b = bitstream->bytes[i];
        tmp[2 * i] = b.value1;
        tmp[2 * i + 1] = b.value2;
    }
    int j;
    if(2*i  % unit) {
        for(j = 0; j < unit - 2*i % unit; j++) {
            tmp[2 * i + j] = 0x0;
        }
        //printf("2*i/unit = %d\n", (2 * i + j)%unit); //TODO:Debug!
        i = 2*i/unit + 1;
    }
    else i = 2*i/unit;
    int *result = malloc(sizeof(int) * (i+1));
    int k;
    for(k = 0; k < i; k++) {
        //printf("k: %d\n", k);//TODO
        int tmp_int = 0;
        for(int j = 0; j < unit; j++) {
            tmp_int += tmp[k * unit + j]*(int)pow(2,4*j); //shift left
            // printf("tmp_int = %x ,index = %d, tmp[index] = %x\n",tmp_int, k * unit + j, tmp[k * unit + j]); //TODO:Debug!
        }
        result[k] = tmp_int;
        // ("result = %x\n", result[k]); //TODO:Debug!
    }
    // printf("I'm here!\n"); //TODO:Debug!
    *size = k;
    return result;
}

// convert int* to bitstream according to the size of the unit
Bitstream *int_to_bitstream(int *int_array, int size, int unit) {
}
