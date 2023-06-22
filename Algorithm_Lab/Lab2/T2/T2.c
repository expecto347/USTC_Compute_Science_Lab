// Cuckoo Hashing
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include <stdint.h>

#define MAX 2000000
uint32_t hash1(uint32_t x);
uint32_t hash2(uint32_t x);
int lookup(int key);
void insert(int key);
void delete(int key);
void rehash();
// int a1, b1, c1, a2, b2, c2;

unsigned int hashTable1[MAX];
unsigned int hashTable2[MAX];
int main(void){
    int m, n;
    // initial
    for(int i = 0; i < MAX; i++){
        hashTable1[i] = 0;
        hashTable2[i] = 0;
    }

    scanf("%d %d", &m, &n);
    for(int i = 0; i < n; i++){
        int key;
        char op;
        scanf(" %c%d", &op, &key);
        if(op == 'I')
            insert(key);
        else if(op == 'D')
            delete(key);
        else if(op == 'L')
            printf("%d\n", lookup(key));
    }
  return 0;
}

uint32_t hash1(uint32_t x)
{
    x ^= x >> 17;
    x *= 0xed5ad4bb;
    x ^= x >> 11;
    x *= 0xac4c1b51;
    x ^= x >> 15;
    x *= 0x31848bab;
    x ^= x >> 14;
    return x % MAX;
}

uint32_t
hash2(uint32_t x)
{
    x ^= x >> 16;
    x *= 0x7feb352d;
    x ^= x >> 15;
    x *= 0x846ca68b;
    x ^= x >> 16;
    return x % MAX;
}


int lookup(int key) {
    if(hashTable1[hash1(key)] == key || hashTable2[hash2(key)] == key)
        return 1;
    else
        return 0;
}

void insert(int key) {
    int loop = 0;
    if(lookup(key) == 1) {
        return;
    }
    while(1){
        int h1 = hash1(key);
        int h2 = hash2(key);
        loop++;
        if(hashTable1[h1] == 0) {
            hashTable1[h1] = key;
            return;
        }
        else if(hashTable2[h2] == 0) {
            hashTable2[h2] = key;
            return;
        }
        else {
            int temp = hashTable2[h2];
            hashTable2[h2] = key;
            key = temp;
        } 
    }
    rehash();
    insert(key);
}

void delete(int key) {
    if(hashTable1[hash1(key)] == key) {
        hashTable1[hash1(key)] = 0;
    }
    else if(hashTable2[hash2(key)] == key){
        hashTable2[hash2(key)] = 0;
    }
    else
        return;
}

void rehash() {
    exit(0);
    // // copy hashTable1 to hashTable2
    // int *temp1 = (int *)malloc(sizeof(int) * MAX);
    // int *temp2 = (int *)malloc(sizeof(int) * MAX);
    // for(int i = 0; i < MAX; i++){
    //     temp1[i] = hashTable1[i];
    //     temp2[i] = hashTable2[i];
    //     hashTable1[i] = 0;
    //     hashTable2[i] = 0;
    // }
    // for(int i = 0; i < MAX; i++){
    //     if(temp1[i] != 0)
    //         insert(temp1[i]);
    //     if(temp2[i] != 0)
    //         insert(temp2[i]);
    // }
    // time_t t;
    // srand((unsigned) time(&t) + c2);
    // a1 = rand() % 1000000;
    // srand((unsigned) time(&t) + a1);
    // b1 = rand() % 1000000;
    // srand((unsigned) time(&t) + b1);
    // c1 = rand() % 1000000;
    // srand((unsigned) time(&t) + c1);
    // a2 = rand() % 1000000;
    // srand((unsigned) time(&t) + a2);
    // b2 = rand() % 1000000;
    // srand((unsigned) time(&t) + b2);
    // c2 = rand() % 1000000;
    // free(temp1);
    // free(temp2);
}
