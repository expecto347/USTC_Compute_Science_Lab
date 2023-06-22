# 生成如下的数据，并且保存到文件中
# 点的个数 n，接下来 2n 个数表示点的坐标，分别是第一个点的x坐标，y坐标，第二个点x坐标，y坐标……
# 坐标为0-1000的七位小数

import random
import closest_pairs
import numpy as np

n = 1000000

print("Generating test data...")
with open("test.txt", "w") as f:
    f.write(str(n) + "\n")
    for i in range(n):
        f.write(str(random.random() * 1000) + "\n" + str(random.random() * 1000) + "\n")

print("Reading test data...")
with open("test.txt", "r") as f:
    n = int(f.readline())
    # 读取点的坐标保存到n x m numpy array
    for i in range(n):
        x = float(f.readline())
        y = float(f.readline())
        if i == 0:
            points = np.array([[x, y]])
        else:
            points = np.append(points, [[x, y]])


print("Calculating...")
pairs, min_distance = closest_pairs.solve(points, n=1)
print(pairs)
print(min_distance)
