#include <stdlib.h>
#include <limits.h>
#include <stdio.h>

int minSubArrayLen(int s, int* nums, int n);
int min(int a, int b);
int bs_lower_bound(int a[], int n, int x);

int main(){
    int n, k;
    scanf("%d %d", &n, &k);
    int* nums = (int*)malloc(n * sizeof(int));
    for (int i = 0; i < n; i++)
        scanf("%d", &nums[i]);
    printf("%d\n", minSubArrayLen(k, nums, n));
}

int minSubArrayLen(int s, int* nums, int n) {
    if (n == 0)
        return 0;
    int ans = INT_MAX;
    int* sums = (int*)malloc((n + 1) * sizeof(int));
    sums[0] = 0;
    for (int i = 1; i <= n; i++)
        sums[i] = sums[i - 1] + nums[i - 1];
    for (int i = 1; i <= n; i++) {
        int to_find = s + sums[i - 1];
        int bound = bs_lower_bound(sums, n + 1, to_find);
        if (bound != n + 1) {
            ans = min(ans, bound - i + 1);
        }
    }
    free(sums);
    return (ans != INT_MAX) ? ans : 0;
}

int bs_lower_bound(int a[], int n, int x) {
    int l = 0;
    int h = n; // Not n - 1
    while (l < h) {
        int mid =  l + (h - l) / 2;
        if (x <= a[mid]) {
            h = mid;
        } else {
            l = mid + 1;
        }
    }
    return l;
}

int min(int a, int b){
    return (a < b) ? a : b;
}

