from faker import Faker
import random

fake = Faker()

courses = ['语文', '数学', '英语', '物理', '化学', '生物', '历史', '地理', '政治', '体育', '音乐', '美术']

for _ in range(100):
    id = fake.unique.random_number(digits=5)
    name = random.choice(courses)
    hours = random.randint(30, 200)  # 学时数在30-200之间随机
    type = random.randint(1,2)
    print(f"INSERT INTO course (id, name, hours, type) VALUES ('{id}', '{name}', '{hours}', '{type}');")
