#include <iostream>
#include <fstream>
#include <queue>
#include <algorithm>
#include <stack>
#include <vector>
#include <string.h>

#define SIZE 12

struct Step {
    char x, y;
    char type; // 1-4
};

struct Node {
    int size;
    bool state[SIZE][SIZE];
    Node* nextNODE;
    Node* preNODE;
    Step* preSTEP;
    int g; // cost from start
    int h; // heuristic
    int f; // g + h
};


bool cmp(Node* const & n1, Node* const & n2) {
    return n1->f < n2->f;
}

void printNode(const Node* node);
int heuristic(const Node* node);
Node* childNode(Node* node, char x, char y, char type);
void generateChild(Node* node);
bool CompareNode(Node* node1, Node* node2);
void printResult(Node* node);
Node* Astar(Node *start);

int main() {
    for(int num = 0; num < 10; num++){
        printf("input%d:\n", num);
        char filename[100];
        filename[0] = 0;
        strcat(filename, "../input/input");
        char numStr[10];
        sprintf(numStr, "%d", num);
        strcat(filename, numStr);
        strcat(filename, ".txt");
        std::ifstream file(filename);
        if (!file.is_open()) {
            std::cout << "Error: cannot open file" << std::endl;
            return 1;
        }

        Node* node = new Node;
        file >> node->size;
        for (int i = 0; i < node->size; i++) {
            for (int j = 0; j < node->size; j++) {
                file >> node->state[i][j];
            }
        }
        node->preNODE = nullptr;
        node->nextNODE = nullptr;
        node->preSTEP = nullptr;
        node->g = 0;
        node->h = heuristic(node);
        node->f = node->g + node->h;
        file.close();

        printNode(node);

        Node* result = Astar(node);
        if (result == nullptr) {
            std::cout << "No solution" << std::endl;
            return 1;
        }
        else{
            printResult(result);
        }
    }
    return 0;
}

void printNode(const Node* node) {
    // std::cout << "size: " << node->size << std::endl;
    for (int i = 0; i < node->size; i++) {
        for (int j = 0; j < node->size; j++) {
            std::cout << (node->state[i][j]);
        }
        std::cout << std::endl;
    }
}

int heuristic(const Node* node) {
    // 计算启发式函数的值
    int h = 0;
    for (int i = 0; i < node->size; i++) {
        for (int j = 0; j < node->size; j++) {
            if (node->state[i][j]) {
                h++;
            }
        }
    }
    return h/3;
}

Node* Astar(Node *start){
    // A*算法
    std::vector<Node*> open;
    std::vector<Node*> close;
    open.push_back(start);
    while(!open.empty()){
        // 从open表中取出f值最小的节点
        auto it = std::min_element(open.begin(), open.end(), cmp);
        Node* node = nullptr;
        if (it != open.end()){
            node = *it;
            open.erase(it);
        }
        
        close.push_back(node);
        if(node->h == 0){
            return node;
        }

        // 生成子节点
        generateChild(node);
        Node* child = node->nextNODE;
        for(int i = 0; i < 4 * (node->size - 1) * (node->size - 1); i++){
            // 判断是否在close表中
            bool inClose = false;
            for(auto& closeNode : close){
                if(CompareNode(&child[i], closeNode)){
                    inClose = true;
                    break;
                }
            }
            if(inClose) continue;

            // 判断是否在open表中
            bool inOpen = false;
            for(auto& openNode : open){
                if(CompareNode(&child[i], openNode)){
                    inOpen = true;
                    if(child[i].g < openNode->g){
                        openNode->g = child[i].g;
                        openNode->f = child[i].f;
                        openNode->preNODE = child[i].preNODE;
                        openNode->preSTEP = child[i].preSTEP;
                    }
                }
            }
            if(!inOpen){
                open.push_back(&child[i]);
                printf("push\n");
                printNode(&child[i]);
            }
        }    
    }
    return nullptr; 
}

void generateChild(Node* node){
    node->nextNODE = (Node *)malloc(sizeof(Node)*(node->size-1)*(node->size-1)*4); // 总共最多会有4*(N-1)^2个子节点
    //  1: (i,j), ( i ,j+1), (i-1, j );
    for(int i = 1; i < node->size; i++){
        for(int j = 0; j < node->size - 1; j++){
            Node* child = childNode(node, i, j, 1);
            child->size = node->size;
            child->preNODE = node;
            child->nextNODE = nullptr;
            child->preSTEP = (Step *)malloc(sizeof(Step));
            child->preSTEP->x = i;
            child->preSTEP->y = j;
            child->preSTEP->type = 1;
            child->g = node->g + 1;

            // 生成新的状态
            for(int i = 0; i < node->size; i++){
                for(int j = 0; j < node->size; j++){
                    child->state[i][j] = node->state[i][j];
                }
            }
            if(node->state[i][j])
                child->state[i][j] = false;
            else
                child->state[i][j] = true;
            if(node->state[i][j+1])
                child->state[i][j+1] = false;
            else
                child->state[i][j+1] = true;
            if(node->state[i-1][j])
                child->state[i-1][j] = false;
            else
                child->state[i-1][j] = true;
            
            // 计算启发式函数的值
            child->h = heuristic(child);
            child->f = child->g + child->h;
        }
    }

    // 2: (i,j), (i-1, j ), ( i ,j-1);
    for(int i = 1; i < node->size; i++){
        for(int j = 1; j < node->size; j++){
            Node* child = childNode(node, i, j, 2);
            child->size = node->size;
            child->preNODE = node;
            child->nextNODE = nullptr;
            child->preSTEP = (Step *)malloc(sizeof(Step));
            child->preSTEP->x = i;
            child->preSTEP->y = j;
            child->preSTEP->type = 2;
            child->g = node->g + 1;

            // 生成新的状态
            for(int i = 0; i < node->size; i++){
                for(int j = 0; j < node->size; j++){
                    child->state[i][j] = node->state[i][j];
                }
            }
            if(node->state[i][j])
                child->state[i][j] = false;
            else
                child->state[i][j] = true;
            if(node->state[i-1][j])
                child->state[i-1][j] = false;
            else
                child->state[i-1][j] = true;
            if(node->state[i][j-1])
                child->state[i][j-1] = false;
            else
                child->state[i][j-1] = true;
            
            // 计算启发式函数的值
            child->h = heuristic(child);
            child->f = child->g + child->h;
        }
    }

    // 3: (i,j), ( i ,j-1), (i+1, j );
    for(int i = 0; i < node->size - 1; i++){
        for(int j = 1; j < node->size; j++){
            Node* child = childNode(node, i, j, 3);
            child->size = node->size;
            child->preNODE = node;
            child->nextNODE = nullptr;
            child->preSTEP = (Step *)malloc(sizeof(Step));
            child->preSTEP->x = i;
            child->preSTEP->y = j;
            child->preSTEP->type = 3;
            child->g = node->g + 1;

            // 生成新的状态
            for(int i = 0; i < node->size; i++){
                for(int j = 0; j < node->size; j++){
                    child->state[i][j] = node->state[i][j];
                }
            }
            if(node->state[i][j])
                child->state[i][j] = false;
            else
                child->state[i][j] = true;
            if(node->state[i][j-1])
                child->state[i][j-1] = false;
            else
                child->state[i][j-1] = true;
            if(node->state[i+1][j])
                child->state[i+1][j] = false;
            else
                child->state[i+1][j] = true;
            
            // 计算启发式函数的值
            child->h = heuristic(child);
            child->f = child->g + child->h;
        }
    }

    // 4: (i,j), (i+1, j ), ( i ,j+1);
    for(int i = 0; i < node->size - 1; i++){
        for(int j = 0; j < node->size - 1; j++){
            Node* child = childNode(node, i, j, 4);
            child->size = node->size;
            child->preNODE = node;
            child->nextNODE = nullptr;
            child->preSTEP = (Step *)malloc(sizeof(Step));
            child->preSTEP->x = i;
            child->preSTEP->y = j;
            child->preSTEP->type = 4;
            child->g = node->g + 1;

            // 生成新的状态
            for(int i = 0; i < node->size; i++){
                for(int j = 0; j < node->size; j++){
                    child->state[i][j] = node->state[i][j];
                }
            }
            if(node->state[i][j])
                child->state[i][j] = false;
            else
                child->state[i][j] = true;
            if(node->state[i+1][j])
                child->state[i+1][j] = false;
            else
                child->state[i+1][j] = true;
            if(node->state[i][j+1])
                child->state[i][j+1] = false;
            else
                child->state[i][j+1] = true;
            
            // 计算启发式函数的值
            child->h = heuristic(child);
            child->f = child->g + child->h;
        }
    }
}

Node* childNode(Node* node, char x, char y, char type) {
    // return the child node of node
    switch(type){
        case 1:
            return node->nextNODE + (x-1)*(node->size-1) + y;
        case 2:
            return node->nextNODE + (node->size-1)*(node->size-1) + (x-1)*(node->size-1) + (y-1);
        case 3:
            return node->nextNODE + 2*(node->size-1)*(node->size-1) + x*(node->size-1) + (y-1);
        case 4:
            return node->nextNODE + 3*(node->size-1)*(node->size-1) + x*(node->size-1) + y;
        default:
            return nullptr;
    }
}

bool CompareNode(Node* node1, Node* node2){
    // return true if node1 < node2
    if(node1->size != node2->size)
        return false;
    for(int i = 0; i < node1->size; i++){
        for(int j = 0; j < node1->size; j++){
            if(node1->state[i][j] != node2->state[i][j])
                return false;
        }
    }
    return true;
}

void printResult(Node* node){
    std::stack<Node*> stack;
    int n = 0;
    while(node->preNODE != nullptr){
        stack.push(node);
        node = node->preNODE;
        n++;
    }
    printf("%d\n", n);
    while(!stack.empty()){
        node = stack.top();
        stack.pop();
        printf("%d,%d,%d\n\n", node->preSTEP->x, node->preSTEP->y, node->preSTEP->type);
        printNode(node);
    }
    return;
}
