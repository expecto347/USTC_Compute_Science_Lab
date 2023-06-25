from faker import Faker
import random

fake = Faker()

for _ in range(100):
    id = fake.unique.random_number(digits=5)
    name = fake.name()
    sex = random.randint(1, 2)
    position = random.randint(1, 11)
    print(f"INSERT INTO teacher (id, name, sex, position) VALUES ('{id}', '{name}', '{sex}', '{position}');")
