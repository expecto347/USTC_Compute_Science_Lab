#include <bits/stdc++.h>
using namespace std;

int SORT(vector<int>& array);
vector<long long> query(int start, int end, int parent, int qstart, int qend, int k);
void update(int start, int end, int parent, int index, vector<long long>& update_arr, int k);
int seekSizeK(vector<int>& array, int n) ;
 
vector<vector<long long>>tree; // vector<long long> 表示以节点结束的长度为K的LIS的数量

int main() {
    int n, k;
    scanf("%d %d", &n, &k);
    vector<int> array(n);
    for (int i = 0; i < n; i++) {
        scanf("%d", &array[i]);
    }

    printf("%d\n", seekSizeK(array, k));
    return 0;
}
 
int SORT(vector<int>& array){
    unordered_set<int> uniqueElements;
    
    for (int num : array)
        uniqueElements.insert(num);
    
    vector<int> sortedElements(uniqueElements.begin(), uniqueElements.end());
    sort(sortedElements.begin(), sortedElements.end());
    
    unordered_map<int, int> rankMap;
    
    int rank = 0;
    for (int num : sortedElements) {
        rankMap[num] = rank++;
    }
    
    int uniqueCount = sortedElements.size();
    
    for (int i = 0; i < array.size(); i++) {
        array[i] = rankMap[array[i]];
    }
    
    return uniqueCount;
}

 
vector<long long> query(int start, int end, int parent, int qstart, int qend, int k) {
    // 查询区间[qstart, qend]中以节点parent为根的子树中长度为k的LIS的数量
    if (end < qstart || qend < start)
        return vector<long long>(k + 1, 0);
    if (qstart <= start && qend >= end)
        return tree[parent];
    int mid = (start + end) / 2;
    vector<long long> left = query(start, mid, 2 * parent + 1, qstart, qend, k);
    vector<long long> right = query(mid + 1, end, 2 * parent + 2, qstart, qend, k);

    // 合并两个长度为k的数组
    vector<long long> result(k + 1, 0);
    for (int i = 1; i <= k; i++){
        result[i] = left[i] + right[i];
    }
    return result;
}
 
void update(int start, int end, int parent, int index, vector<long long>& update_arr, int k){
    // 更新以节点parent为根的子树中index节点的长度为k的LIS的数量
    if (index < start || index > end)
        return;
    if (start == end){
        vector<long long> result(k + 1, 0);
        for (int i = 1; i <= k; i++) {
            result[i] = update_arr[i] + tree[parent][i];
        }
        tree[parent] = result;
        return;
    }
    int mid = (start + end) / 2;
    if (index > mid){
        update(mid + 1, end, 2 * parent + 2, index, update_arr, k);
    }
    else{
        update(start, mid, 2 * parent + 1, index, update_arr, k);
    }

    vector<long long> left = tree[2 * parent + 1];
    vector<long long> right = tree[2 * parent + 2];
    vector<long long> result(k + 1, 0);
    for (int i = 1; i <= k; i++) {
        result[i] = left[i] + right[i];
    }
    tree[parent] = result;
    return;
}
 
int seekSizeK(vector<int>& array, int n) {
    // 计算arr中长度为K的LIS的数量
    int mx = SORT(array);
    tree.resize(4 * mx + 1, vector<long long>(n + 1, 0));
 
    for (int i = 0; i < array.size(); i++) {
        vector<long long> tmp(n + 1, 0);
        tmp[1] = 1;

        if (array[i] > 0) {
            vector<long long> tem_i = query(0, mx, 0, 0, array[i] - 1, n);
              for (int k = 2; k <= n; k++) {
                tmp[k] = tem_i[k - 1];
            }
        }
        
        update(0, mx, 0, array[i], tmp, n);
    }
    return tree[0][n];
}