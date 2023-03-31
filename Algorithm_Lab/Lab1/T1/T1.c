// T1:某公司招聘人员，需要对人员进行排序，以安排面试顺序。根据参加者的两场笔试成绩和准考证号，
// 姓名，设计快速排序算法进行排序。其中比较优先级为：笔试总分 > 笔试一成绩 > 姓名 > 准考证号。
// 即：只有在笔试总分不一样时才需要比较笔试一的成绩去确定谁排在前面。

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct {
    int id;
    char name[5];
    int score1;
    int score2;
} Person;

void quickSort(Person p[], int left, int right);
int compare(Person p1, Person p2);
char *id2char(int id);

int main(){
    int n;
    scanf("%d", &n);
    Person p[n];
    for (int i = 0; i < n; i++) {
        scanf("%d %s %d %d", &p[i].id, p[i].name, &p[i].score1, &p[i].score2);
    }
    quickSort(p, 0, n - 1);
    for (int i = 0; i < n; i++) {
        //char *id_char = id2char(p[i].id);
        printf("%06d\n", p[i].id);
        //free(id_char);
    }
    return 0;
}

void quickSort(Person p[], int left, int right){
    // quick Sort from big to small 
    if (left < right) {
        int i = left;
        int j = right;
        Person temp = p[left];
        while (i < j) {
            while (i < j && compare(p[j], temp) <= 0) {
                j--;
            }
            if (i < j) {
                p[i] = p[j];
                i++;
            }
            while (i < j && compare(p[i], temp) >= 0) {
                i++;
            }
            if (i < j) {
                p[j] = p[i];
                j--;
            }
        }
        p[i] = temp;
        quickSort(p, left, i - 1);
        quickSort(p, i + 1, right);
    }
}

int compare(Person p1, Person p2){
    if (p1.score1 + p1.score2 > p2.score1 + p2.score2) {
        return 1;
    } else if (p1.score1 + p1.score2 < p2.score1 + p2.score2) {
        return -1;
    } else {
        if (p1.score1 > p2.score1) {
            return 1;
        } else if (p1.score1 < p2.score1) {
            return -1;
        } else {
            if (strcmp(p1.name, p2.name) < 0) {
                return 1;
            } else if (strcmp(p1.name, p2.name) > 0) {
                return -1;
            } else {
                if (p1.id < p2.id) {
                    return 1;
                } else if (p1.id > p2.id) {
                    return -1;
                } else {
                    return 0;
                }
            }
        }
    }
}

// char *id2char(int id){
//     // convert id to char
//     // eg: 123 -> "000123"
//     char *str = (char *)malloc(sizeof(char) * 7);
//     str[6] = 0;
//     int i = 5;
//     while (id != 0) {
//         str[i] = id % 10 + '0';
//         id /= 10;
//         i--;
//     }
//     while (i >= 0) {
//         str[i] = '0';
//         i--;
//     }
//     return str;
// }