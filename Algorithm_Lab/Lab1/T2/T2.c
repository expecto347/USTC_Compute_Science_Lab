// T2. 某公司招聘人员，需要对人员进行排序，以安排面试顺序。根据参加者的两场笔试成绩和准考证号，姓名，设计基数排序算法进行排序。
// 其中比较优先级为:笔试 总分 > 笔试一成绩 > 姓名 > 准考证号。
// 即:只有在笔试总分不一样时才需要比较笔试一的成绩去确定谁排在前面。
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char name[10];
    int id;
    int score1;
    int score2;
    int sum[22];
} Person;

void radix_sort(Person *p, int n);
// int GetDigit(int M, int i);
void print(Person *p, int n);
int **convertname2int(Person *p, int n);
// void print_score(Person *p, int n);

int main(void){
    int n;
    scanf("%d", &n);
    Person *p = (Person *)malloc(sizeof(Person) * n);
    for (int i = 0; i < n; i++) {
        scanf("%d %s %d %d", &p[i].id, p[i].name, &p[i].score1, &p[i].score2);
    }
    radix_sort(p, n);
    print(p, n);
    return 0;
}

void radix_sort(Person *p, int n){
    int **name_int = convertname2int(p, n);
    // unsigned char **score = (unsigned char**)malloc(sizeof(unsigned char*) * n);
    for (int i = 0; i < n; i++) {
        // 我们将每个位数按照权重分好顺序，现在我们只需要将他们排好即可
        p[i].sum[0] = (p[i].score1 + p[i].score2) / 100;
        p[i].sum[1] = (p[i].score1 + p[i].score2) / 10 % 10;
        p[i].sum[2] = (p[i].score1 + p[i].score2) % 10;
        p[i].sum[3] = p[i].score1 / 100;
        p[i].sum[4] = p[i].score1 / 10 % 10;
        p[i].sum[5] = p[i].score1 % 10;
        for (int j = 0; j < 10; j++) {
            p[i].sum[6 + j] = name_int[i][j];
        }
        p[i].sum[16] = 9 - p[i].id / 100000;
        p[i].sum[17] = 9 - p[i].id / 10000 % 10;
        p[i].sum[18] = 9 - p[i].id / 1000 % 10;
        p[i].sum[19] = 9 - p[i].id / 100 % 10;
        p[i].sum[20] = 9 - p[i].id / 10 % 10;
        p[i].sum[21] = 9 - p[i].id % 10;
    }

    // print_score(p, n);
    // 基数排序，从大到小
    int **allot = (int **)malloc(sizeof(int*) * 27);
    for (int i = 0; i < 27; i++) {
        allot[i] = (int *)malloc(sizeof(int) * n);
    }
    int *count = (int *)malloc(sizeof(int) * 27);
    memset(count, 0, sizeof(int) * 27);
    Person *temp = (Person *)malloc(sizeof(Person) * n);
    
    for(int i = 21; i >=0; i--){
        for(int j = 0; j < n; j++){
            allot[p[j].sum[i]][count[p[j].sum[i]]++] = j;
        }
        int k = 0;
        for(int j = 26; j >= 0; j--){
            for(int l = 0; l < count[j]; l++){
                temp[k++] = p[allot[j][l]];
            }
            count[j] = 0;
        }
        for(int j = 0; j < n; j++){
            p[j] = temp[j];
        }
    }
    //free
    free(temp);
    free(count);
    for (int i = 0; i < n; i++) {
        free(name_int[i]);
    }
    free(name_int);

    return;
}

int **convertname2int(Person *p, int n){
    int **name = (int **)malloc(sizeof(int*) * n);
    for (int i = 0; i < n; i++) {
        name[i] = (int *)malloc(sizeof(int) * 10);
        name[i][0] = 25 - (p[i].name[0] - 'A'); //Capital letter 按照权重
        for (int j = 1; j < 10; j++) {
            if (p[i].name[j] != '\0') {
                name[i][j] = 25 - (p[i].name[j] - 'a');
            }
            else {
                name[i][j] = 26;
            }
        }
    }
    return name;
}

void print(Person *p, int n){
    for (int i = 0; i < n; i++) {
        printf("%06d\n", p[i].id);
    }
}

// void print_score(Person *p, int n){
//     for (int i = 0; i < n; i++) {
//         for (int j = 0; j < 22; j++) {
//             printf("%d ", p[i].sum[j]);
//         }
//         printf("\n");
//     }
// }