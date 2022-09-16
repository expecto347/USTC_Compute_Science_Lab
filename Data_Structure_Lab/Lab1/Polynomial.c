#include <stdio.h>
#include <stdlib.h>

typedef struct Node{
    int exp; //The exponent of the variable.多项式的指数
    double co; //The coefficients before the variable.多项式系数
    struct Node *NextNode; //指向下一个节点
}Node;

typedef struct Poly{
    int n; //多项式的项数，0表示没有建立多项式
    Node *header; //指向头指针
}Poly;

int main(){
    Poly *poly;
    if((poly = (Poly *)malloc(sizeof(Poly)))) ; 
    else return 1;//尝试分配地址，如果地址分配失败则结束程序

    poly->header = NULL;
    poly->n = 0;//建立多项式的指针，并初始化

    double co;
    int exp;
    printf("请依次输入项的系数，空格后输入项的指数，例如3x^2，请输入“3 2”，输入0 0结束输入\n");
    scanf("%lf %d",&co,&exp);
    printf("%lf %d\n",co,exp);
}