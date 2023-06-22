#include<iostream>
#include<cstdio>
#include<algorithm>
#define N 1000000
using namespace std;

int n, r, b[N], f[N], d[N], o[N], ans, u, v, w;

bool cmp(int x, int y) {
    return d[x] > d[y];
}

int main() {
    scanf("%d %d", &n, &r); // 读取节点数量n
    getchar(); // 读取换行符
    b[1] = 1;
    o[1] = o[0] = N; // 初始化覆盖距离数组，初始值设为较大的值
    ans = 0;

    int i = 2;
    int father = 1;
    int j;
    int sum = 1;
    
    while(sum < n){
        scanf("%d", &j);
        sum += j;
        // printf("j = %d\n", j);
        while(j--){
            scanf("%d", &b[i]);
            f[b[i]] = father;
            d[b[i]] = d[father] + 1;
            o[b[i]] = N;
            i++;
        }
        father++;
    }

    sort(b + 1, b + n + 1, cmp); // 对节点数组进行排序，根据节点到根节点的距离降序排列
     
    for(int i = 1; i <= n; i++){
        v = b[i];
        int min_t = o[v];
        int tmp = v;
        for(int j = 1; j <= r; j++){ //寻找最小的覆盖距离
            // 前溯r个节点，寻找最小值
            tmp = f[tmp]; // tmp为当前节点的父节点
            if(o[tmp] + j < min_t){
                min_t = o[tmp] + j;
            }
        }
        o[v] = min_t;
        if(o[v] > r){
            ans++;
            tmp = v;
            o[v] = r;
            for(int j = 1; j <= r; j++){
                tmp = f[tmp];
                o[tmp] = r - j;
            }
            for(int j = 1; j <= r; j++){
                tmp = f[tmp];
                o[tmp] = min(o[tmp], j);
            }
        }
    }
    printf("%d\n", ans); // 输出最小覆盖集的大小
    return 0;
}