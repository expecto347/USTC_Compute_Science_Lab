// fibonacci.c
int fibonacci(int n) {
    if (n <= 1)
        return n;
    else
        return fibonacci(n - 1) + fibonacci(n - 2);
}
int main() {
    int n;
    n = 10;
    return fibonacci(n);
}