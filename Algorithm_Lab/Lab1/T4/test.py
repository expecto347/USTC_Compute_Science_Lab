import random
import numpy as np

n = 39999
a = [0] * (n + 1)
b = [0] * (n + 1)
c = [0] * (2 * n + 2)

print("Generating test data...")
with open("test.txt", "w") as f:
    f.write(str(n) + '\n')
    for i in range(n + 1):
        a[i] = random.randint(-100, 100)
        f.write(str(a[i]) + '\n')

    for i in range(n + 1):
        b[i] = random.randint(-100, 100)
        f.write(str(b[i]) + '\n')

print("Calculating...")
# Polymonial multiplication
c = np.polymul(a, b)

# print the result
with open("result.txt", "w") as f:
    for i in range(2 * n + 1):
        f.write(str(c[i]) + '\n')
print("Done!")