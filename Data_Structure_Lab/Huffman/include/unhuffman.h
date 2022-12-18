#ifndef UNHUFFMAN_H
#define UNHUFFMAN_H

#include "bitstream.h"
char *unhuffman_decode(unsigned char **table, char *bin, HEAD *h);
#endif