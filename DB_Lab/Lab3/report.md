# Lab3实验报告
## 创建表格
```mysql
use Lab3;

# 创建教师表
create table teacher
(
    id varchar(5) not null,
    name varchar(256) not null,
    sex int not null, # 1: 男 2: 女
    position int not null,
    # 1-博士后，2-助教，3-讲师，4-副教授，5-特任教授，6-教授，7-助理研究员，8-特任副研究员，9-副研究员，10-特任研究员，11-研究员
    primary key(id)
);

# 创建课程表
create table course
(
    id varchar(256) not null,
    name varchar(256) not null,
    hours int not null, # 学时数
    type int not null, # 1-本科生课程，2-研究生课程
    primary key(id)
);

# 创建论文表
create table paper
(
    id int not null auto_increment,
    name varchar(256) not null,
    publication_source varchar(256) not null, # 发表刊物
    `date` date not null, # 发表日期
    type int not null, # 1-full paper，2-short paper，3-poster paper，4-demo paper
    level int not null, # 1-CCF-A，2-CCF-B，3-CCF-C，4-中文 CCF-A，5-中文 CCF-B，6-无级别
    primary key(id)
);

# 创建项目表
create table project
(
    id varchar(256) not null,
    name varchar(256) not null,
    source varchar(256) not null, # 项目来源
    type int not null, # 1-国家级项目，2-省部级项目，3-市厅级项目，4-企业合作项目，5-其它类型项目
    funding float not null, # 项目经费
    start_year int not null, # 项目开始年份
    end_year int not null, # 项目结束年份
    primary key(id)
);

# 创建发表论文表，是一个多对多关系
create table teacher_paper
(
    teacher_id varchar(5) not null,
    paper_id int not null,
    `rank` int not null,
    is_corresponding_author int not null,
    primary key(teacher_id, paper_id),
    foreign key(teacher_id) references teacher(id),
    foreign key(paper_id) references paper(id)
);

# 创建教师承担项目表，是一个多对多关系
create table teacher_project
(
    teacher_id varchar(5) not null,
    project_id varchar(256) not null,
    `rank` int not null,
    funding float not null,
    primary key(teacher_id, project_id),
    foreign key(teacher_id) references teacher(id),
    foreign key(project_id) references project(id)
);

# 创建教师承担课程表，是一个多对多关系
create table teacher_course
(
    teacher_id varchar(5) not null,
    course_id varchar(256) not null,
    year int not null,
    semester int not null,
    hours int not null, # 教师承担课程的学时数
    primary key(teacher_id, course_id),
    foreign key(teacher_id) references teacher(id),
    foreign key(course_id) references course(id)
);

# 创建用户
create table users
(
    username varchar(256) not null,
    password varchar(256) not null, # 实际情况中，应存储密码的哈希值，而不是明文密码
    primary key(username)
);

```