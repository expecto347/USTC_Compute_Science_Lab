void TrieTree_Insert_Key(TrieTree &T,StringType key) {//在 Trie 树 T 中插入字符串
    int i = 0;
    int index = 0;
    TrieTree p = T;
    while (key[i] != '\0') {
        index = key[i] - 'a';
        if (p->next[index] == NULL) {
            TrieTree temp = (TrieTree)malloc(sizeof(TrieNode));
            temp->count = 0;
            for (int j = 0; j < 26; j++) {
                temp->next[j] = NULL;
            }
            p->next[index] = temp;
        }
        p = p->next[index];
        i++;
    }
    p->count++;
}