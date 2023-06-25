import random
import string
from datetime import datetime, timedelta

paper_names = ["深度学习研究", "自然语言处理", "人工智能未来", "量子物理基础", "生物科学突破", "新材料研究"]
publication_sources = ["Nature", "Science", "IEEE Transactions", "Journal of Machine Learning Research", "Journal of Quantum Physics"]
paper_types = [1, 2, 3, 4]
paper_levels = [1, 2, 3, 4, 5, 6]
date_start = datetime(2000, 1, 1)
date_end = datetime(2023, 12, 31)

def random_date():
    return date_start + (date_end - date_start) * random.random()

for i in range(100):
    name = random.choice(paper_names) + f" {i}"  # 创建一个论文名字
    publication_source = random.choice(publication_sources)  # 随机选择一个发表刊物
    type = random.choice(paper_types)  # 随机选择一个论文类型
    level = random.choice(paper_levels)  # 随机选择一个论文等级
    date = random_date().strftime("%Y-%m-%d")  # 创建一个随机的发表日期

    # 输出SQL插入语句
    print(f"INSERT INTO paper (name, journal, `date`, type, level) "
          f"VALUES ('{name}', '{publication_source}', '{date}', {type}, {level});")
