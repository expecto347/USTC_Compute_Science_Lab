#include <cstdint>
#include <iostream>
#include <fstream>

#define LENGTH 3
#define MAXLEN 100
int mod(int a, int b);

int16_t lab1(int16_t a, int16_t b) {
    // initialize
    int n = 1;
    int tem = a; //初始化tem=A，在每次取模后若结果不为零，则减去2^n，这样来实现第n位前的所有位均为0 
    int result = 0;
    int loop = b;
    int t;
    // calculation
    while(loop){
        // printf("loop: %d ", loop);
        n = n + n; //考虑到汇编只能实现加法运算，这里的意思是在每次循环中都对n*2，以此来实现2^n操作
        t = tem;
        while(t >= 0){
            t = t - n; //这里的意思是在每次循环中都对tem-2^n，以此来实现第n位的取模操作
        }
        t = t + n;
        // printf("t: %d ", t);
        if(t) {
            result++; //如果取模不为零，将result加一 
            tem = tem - t; //将第n位清零
        }
        loop--; 
    }
    // return value
    return result;
}

int16_t lab2(int16_t p, int16_t q, int16_t n) {
    // initialize
    int a0 = 1;
    int a1 = 1;
    // calculation F(N)=F(N-2)%p+F(N-1)%q
    for(int i = 2; i <= n; i++){
        int temp = a1;
        a1 = mod(a0, p) + mod(a1, q);
        a0 = temp;
    }
    // return value
    return a1;
}

int16_t lab3(int16_t n, char s[]) {
    char char_now = s[0];
    char char_pre = s[0];
    int max = 0;
    int t;
    //int n;
    int i = 0;
    do{
        if(char_now != char_pre){
            if(t >= max){
                max = t;
                t = 0;
            } 
            else{
                t = 0; 
            }
        } 
        t++; 
        n--;
        i++;
        char_pre = char_now;
        char_now = s[i];
    }while(n>0);
    
    if(t >= max){
        return t;
    }   
    return max;
}

void lab4(int16_t score[], int16_t *a, int16_t *b) {
    // Sort Score from low to high
    int i;
    for(i = 0; i < 16; i++){
        for(int j = i + 1; j < 16; j++){
            if(score[i] > score[j]){
                int temp = score[i];
                score[i] = score[j];
                score[j] = temp;
            }
        }
    }
    // Calculate top 25% and grade is more than 85, store in a
    int16_t count = 0;
    for(i = 15; i >= 12; i--){
        if(score[i] >= 85){
            count++;
        }
    }
    *a = count;

    // Calculate top 50% and grade is more than 75, store in b
    int count_b = 0;
    for(i = 15; i >= 8; i--){
        if(score[i] >= 75){
            count_b++;
        }
    }
    *b = count_b - count;
}

int mod(int a, int b){
    int c = a;
    while(c >= 0){
        c = c - b;
    }
    c = c + b;
    return c;
}
int main() {
    std::fstream file;
    file.open("test.txt", std::ios::in);
    // lab1
    int16_t a = 0, b = 0;

    for (int i = 0; i < LENGTH; ++i) {
        file >> a >> b;
        std::cout << lab1(a, b) << std::endl;
    }

    // lab2
    int16_t p = 0, q = 0, n = 0;

    for (int i = 0; i < LENGTH; ++i) {
        file >> p >> q >> n;
        std::cout << lab2(p, q, n) << std::endl;
    }
    // lab3
    char s[MAXLEN];
    for (int i = 0; i < LENGTH; ++i) {
        file >> n >> s;
        std::cout << lab3(n, s) << std::endl;
    }

    // lab4
    int16_t score[16];
    for (int i = 0; i < LENGTH; ++i) {
        for (int j = 0; j < 16; ++j) {
            file >> score[j];
        }
        lab4(score, &a, &b);
        for (int j = 0; j < 16; ++j) {
            std::cout << score[j] << " ";
        }
        std::cout << std::endl << a << " " << b << std::endl;
    }
    file.close();
return 0; }