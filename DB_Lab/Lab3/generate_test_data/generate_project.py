import random
import string

project_names = ["新能源研究", "生态保护技术研发", "人工智能应用", "气候变化研究", "量子物理研究", "生物科学研究", "新材料研究"]
project_sources = ["国家自然科学基金", "省级科技厅", "市级科技厅", "某科技公司", "某环保组织", "某教育机构"]
project_types = [1, 2, 3, 4, 5]
years = list(range(2010, 2024))

for i in range(100):
    id = ''.join(random.choices(string.ascii_uppercase + string.digits, k=10))  # 创建一个随机的项目ID
    name = random.choice(project_names) + f" {i}"  # 创建一个项目名字
    source = random.choice(project_sources)  # 随机选择一个项目来源
    type = random.choice(project_types)  # 随机选择一个项目类型
    funding = round(random.uniform(100000, 1000000), 2)  # 创建一个随机的经费，范围是100000到1000000，保留2位小数
    start_year = random.choice(years)  # 随机选择一个开始年份
    end_year = start_year + random.randint(1, 4)  # 结束年份是开始年份加上1到4年

    # 接下来，你可以输出SQL插入语句
    print(f"INSERT INTO project (id, name, source, type, funding, start_year, end_year) "
          f"VALUES ('{id}', '{name}', '{source}', {type}, {funding}, {start_year}, {end_year});")
