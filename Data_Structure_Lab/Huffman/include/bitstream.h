#ifndef BITSTREAM_H
#define BITSTREAM_H

typedef struct A{
    unsigned char value1 : 4; // 4 bits
    unsigned char value2 : 4; // 4 bits
}Byte;

typedef struct bitstream{
    Byte *bytes;
    int size;
}Bitstream;

void write(char *filename, Bitstream *bitstream);
Bitstream *read(char *filename);
int *bitstream_to_int(Bitstream *bitstream, int unit, int *size);
Bitstream *int_to_bitstream(int *int_array, int size, int unit);
#endif