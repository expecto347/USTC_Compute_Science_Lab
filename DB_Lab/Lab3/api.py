import hashlib

import pymysql.cursors


def hash_password(password):
    # 使用SHA-256算法对密码进行哈希，返回十六进制字符串
    return hashlib.sha256(password.encode()).hexdigest()


class MySQLAPI:

    def __init__(self):
        self.connection = pymysql.connect(host='43.138.65.47',
                                          port=33306,
                                          user='root',
                                          password='Sun031206',
                                          db='Lab3',
                                          charset='utf8mb4',
                                          cursorclass=pymysql.cursors.DictCursor)

    def get_user_password(self, username):
        with self.connection.cursor() as cursor:
            sql = "SELECT password,type FROM users WHERE username=%s"
            cursor.execute(sql, (username,))
            result = cursor.fetchone()
            if result:
                return result['password'], result['type']
            else:
                return None, None

    def verify_user_password(self, username, password):
        stored_hash, account_type = self.get_user_password(username)  # 数据库中存储的密码哈希
        input_hash = hash_password(password)  # 用户输入密码的哈希

        return stored_hash == input_hash, account_type

    def add_new_user(self, username, password):
        hashed_password = hash_password(password)
        try:
            with self.connection.cursor() as cursor:
                sql = "INSERT INTO users (username, password) VALUES (%s, %s)"
                cursor.execute(sql, (username, hashed_password))
            self.connection.commit()
            return 1
        except pymysql.err.IntegrityError:
            # print(f"无法添加用户 {username}，用户名已经存在。")
            return 2
        except Exception:
            # print(f"添加用户 {username} 时发生错误：{e}")
            return 3

    def get_papers(self):
        papers = []
        try:
            with self.connection.cursor() as cursor:
                sql = "SELECT * FROM paper"
                cursor.execute(sql)
                result = cursor.fetchall()
                for row in result:
                    papers.append(row)
        except pymysql.MySQLError as e:
            print(f"Error while getting papers: {e}")
            return None
        return papers

    def get_paper_by_name(self, name):
        papers = []
        try:
            with self.connection.cursor() as cursor:
                # search by regular expression *name*
                sql = "SELECT * FROM paper WHERE name LIKE %s"
                cursor.execute(sql, ('%' + name + '%',))
                result = cursor.fetchall()
                # 1-CCF-A，2-CCF-B，3-CCF-C，4-中文 CCF-A，5-中文 CCF-B，6-无级别
                # 1-full paper，2-short paper，3-poster paper，4-demo paper
                for row in result:
                    if row['level'] == 1:
                        row['level'] = 'CCF-A'
                    elif row['level'] == 2:
                        row['level'] = 'CCF-B'
                    elif row['level'] == 3:
                        row['level'] = 'CCF-C'
                    elif row['level'] == 4:
                        row['level'] = '中文 CCF-A'
                    elif row['level'] == 5:
                        row['level'] = '中文 CCF-B'
                    elif row['level'] == 6:
                        row['level'] = '无级别'
                    if row['type'] == 1:
                        row['type'] = 'full paper'
                    elif row['type'] == 2:
                        row['type'] = 'short paper'
                    elif row['type'] == 3:
                        row['type'] = 'poster paper'
                    elif row['type'] == 4:
                        row['type'] = 'demo paper'

                    papers.append(row)
        except pymysql.MySQLError as e:
            print(f"Error while getting papers: {e}")
            return None
        return papers

    def get_paper_by_teacher_id(self, teacher_id):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                SELECT paper.name, paper.journal, paper.date, paper.level, teacher_paper.`rank`, teacher_paper.is_corresponding_author 
                FROM paper 
                JOIN teacher_paper 
                ON paper.id = teacher_paper.paper_id 
                WHERE teacher_paper.teacher_id = %s
                """
                cursor.execute(sql, (teacher_id,))
                result = cursor.fetchall()
                # 1-CCF-A，2-CCF-B，3-CCF-C，4-中文 CCF-A，5-中文 CCF-B，6-无级别
                if result[0]['level'] == 1:
                    result[0]['level'] = 'CCF-A'
                elif result[0]['level'] == 2:
                    result[0]['level'] = 'CCF-B'
                elif result[0]['level'] == 3:
                    result[0]['level'] = 'CCF-C'
                elif result[0]['level'] == 4:
                    result[0]['level'] = '中文 CCF-A'
                elif result[0]['level'] == 5:
                    result[0]['level'] = '中文 CCF-B'
                elif result[0]['level'] == 6:
                    result[0]['level'] = '无级别'
                if result[0]['is_corresponding_author'] == 1:
                    result[0]['is_corresponding_author'] = '是'
                elif result[0]['is_corresponding_author'] == 0:
                    result[0]['is_corresponding_author'] = '否'
                return result
        except pymysql.MySQLError as e:
            print(f"Error while getting paper by teacher ID: {e}")
            return None
        except IndexError:
            return None

    def add_paper(self, name, publication_source, date, paper_type, level):
        if paper_type == 'full paper':
            paper_type = 1
        elif paper_type == 'short paper':
            paper_type = 2
        elif paper_type == 'poster paper':
            paper_type = 3
        elif paper_type == 'demo paper':
            paper_type = 4
        else:
            return False
        if level == 'CCF-A':
            level = 1
        elif level == 'CCF-B':
            level = 2
        elif level == 'CCF-C':
            level = 3
        elif level == '中文 CCF-A':
            level = 4
        elif level == '中文 CCF-B':
            level = 5
        elif level == '无级别':
            level = 6
        else:
            return False
        try:
            with self.connection.cursor() as cursor:
                sql = "CALL add_paper(%s, %s, %s, %s, %s)"
                cursor.execute(sql, (name, publication_source, date, paper_type, level))
            self.connection.commit()
        except pymysql.IntegrityError as e:
            print(f"Integrity Error while adding paper: {e}")
            return False
        except pymysql.DataError as e:
            print(f"Data Error while adding paper: {e}")
            return False
        except pymysql.MySQLError as e:
            print(f"MySQL Error while adding paper: {e}")
            return False
        return True

    def add_teacher_paper_relation(self, paper_name, teacher_name, author_rank, is_corresponding_author):
        try:
            # Get paper ID by name
            papers = self.get_paper_by_name(paper_name)
            if not papers:
                print(f"No paper found with name: {paper_name}")
                return False
            paper_id = papers[0]['id']

            # Get teacher ID by name
            teachers = self.get_teacher_by_name(teacher_name)
            if not teachers:
                print(f"No teacher found with name: {teacher_name}")
                return False
            teacher_id = teachers[0]['id']

            # Add relation to teacher_paper table
            with self.connection.cursor() as cursor:
                sql = "INSERT INTO teacher_paper (paper_id, teacher_id, `rank`, is_corresponding_author) VALUES (%s, " \
                      "%s, %s, %s)"
                cursor.execute(sql, (int(paper_id), int(teacher_id), int(author_rank), is_corresponding_author))

            self.connection.commit()
            return True

        except pymysql.MySQLError as e:
            print(f"Error while adding teacher-paper relation: {e}")
            return False

    def delete_paper_by_name(self, name):
        try:
            with self.connection.cursor() as cursor:
                sql = "CALL DeletePaperByName(%s)"
                cursor.execute(sql, (name,))
            self.connection.commit()
        except pymysql.MySQLError as e:
            print(f"Error while deleting paper: {e}")
            return False
        return True

    def modify_paper_by_name(self, old_name, new_name, publication_source, date, paper_type, level):
        if paper_type == 'full paper':
            paper_type = 1
        elif paper_type == 'short paper':
            paper_type = 2
        elif paper_type == 'poster paper':
            paper_type = 3
        elif paper_type == 'demo paper':
            paper_type = 4
        else:
            return False
        if level == 'CCF-A':
            level = 1
        elif level == 'CCF-B':
            level = 2
        elif level == 'CCF-C':
            level = 3
        elif level == '中文 CCF-A':
            level = 4
        elif level == '中文 CCF-B':
            level = 5
        elif level == '无级别':
            level = 6
        else:
            return False
        try:
            with self.connection.cursor() as cursor:
                sql = "CALL ModifyPaperByName(%s, %s, %s, %s, %s, %s)"
                cursor.execute(sql, (old_name, new_name, publication_source, date, paper_type, level))
            self.connection.commit()
        except pymysql.MySQLError as e:
            print(f"Error while modifying paper: {e}")
            return False
        return True

    def get_paper_author(self, paper_name):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                SELECT t.name, tp.rank, tp.is_corresponding_author
                FROM paper AS p
                JOIN teacher_paper AS tp ON p.id = tp.paper_id
                JOIN teacher AS t ON tp.teacher_id = t.id
                WHERE p.name = %s
                ORDER BY tp.rank
                """
                cursor.execute(sql, (paper_name,))
                result = cursor.fetchall()
            self.connection.commit()
        except pymysql.MySQLError as e:
            print(f"Error while getting authors: {e}")
            return None
        return result

    def delete_author(self, paper_name, author_rank):
        try:
            # Get paper ID by name
            papers = self.get_paper_by_name(paper_name)
            if not papers:
                print(f"No paper found with name: {paper_name}")
                return False
            paper_id = papers[0]['id']

            # Delete author from teacher_paper table
            with self.connection.cursor() as cursor:
                sql = "DELETE FROM teacher_paper WHERE paper_id=%s AND `rank`=%s"
                cursor.execute(sql, (paper_id, int(author_rank)))

            self.connection.commit()
            return True

        except pymysql.MySQLError as e:
            print(f"Error while deleting author: {e}")
            return False

    def get_teacher_by_name(self, name):
        try:
            with self.connection.cursor() as cursor:
                sql = "SELECT * FROM `teacher` WHERE `name` = %s"
                cursor.execute(sql, (name,))
                result = cursor.fetchall()
            self.connection.commit()
        except pymysql.MySQLError as e:
            print(f"Error while getting teacher: {e}")
            return None
        return result

    def get_teacher_by_id(self, id):
        try:
            with self.connection.cursor() as cursor:
                sql = "SELECT * FROM `teacher` WHERE `id` = %s"
                cursor.execute(sql, (id,))
                result = cursor.fetchall()
            self.connection.commit()
        except pymysql.MySQLError as e:
            print(f"Error while getting teacher: {e}")
            return None
        # convert sex
        if result[0]['sex'] == 1:
            result[0]['sex'] = '男'
        else:
            result[0]['sex'] = '女'

        # 1-博士后，2-助教，3-讲师，4-副教授，5-特任教授，6-教授，7-助理研究员，8-特任副研究员，9-副研究员，10-特任研究员，11-研究员
        if result[0]['position'] == 1:
            result[0]['position'] = '博士后'
        elif result[0]['position'] == 2:
            result[0]['position'] = '助教'
        elif result[0]['position'] == 3:
            result[0]['position'] = '讲师'
        elif result[0]['position'] == 4:
            result[0]['position'] = '副教授'
        elif result[0]['position'] == 5:
            result[0]['position'] = '特任教授'
        elif result[0]['position'] == 6:
            result[0]['position'] = '教授'
        elif result[0]['position'] == 7:
            result[0]['position'] = '助理研究员'
        elif result[0]['position'] == 8:
            result[0]['position'] = '特任副研究员'
        elif result[0]['position'] == 9:
            result[0]['position'] = '副研究员'
        elif result[0]['position'] == 10:
            result[0]['position'] = '特任研究员'
        elif result[0]['position'] == 11:
            result[0]['position'] = '研究员'
        return result

    def get_course_by_name(self, name):
        courses = []
        try:
            with self.connection.cursor() as cursor:
                # search by regular expression *name*
                sql = "SELECT * FROM course WHERE name LIKE %s"
                cursor.execute(sql, ('%' + name + '%',))
                result = cursor.fetchall()

                # 1-本科生课程，2-研究生课程
                for row in result:
                    if row['type'] == 1:
                        row['type'] = '本科生课程'
                    elif row['type'] == 2:
                        row['type'] = '研究生课程'
                    courses.append(row)
        except pymysql.MySQLError as e:
            print(f"Error while getting courses: {e}")
            return None
        return courses

    def add_course(self, course_id, course_name, course_hours, course_nature):
        try:
            with self.connection.cursor() as cursor:
                # Prepare SQL query
                sql = """
                    INSERT INTO course (id, name, hours, type)
                    VALUES (%s, %s, %s, %s)
                """
                # Execute SQL query
                cursor.execute(sql, (course_id, course_name, course_hours, course_nature))
                # Commit the transaction
                self.connection.commit()
        except pymysql.MySQLError as e:
            print(f"Error while adding course: {e}")
            return False
        return True

    def delete_course_by_id(self, course_id):
        try:
            with self.connection.cursor() as cursor:
                # First, delete the related information in the teacher_course table
                sql = "DELETE FROM teacher_course WHERE course_id = %s"
                cursor.execute(sql, (course_id,))

                # Then, delete the course from the course table
                sql = "DELETE FROM course WHERE id = %s"
                cursor.execute(sql, (course_id,))
                self.connection.commit()
                return True
        except pymysql.MySQLError as e:
            print(f"Error while deleting course: {e}")
            return False

    def modify_course(self, course_id, course_name, credit, type):
        try:
            if type == '本科生课程':
                type = 1
            elif type == '研究生课程':
                type = 2
            # Open a new cursor
            with self.connection.cursor() as cursor:

                # Construct the SQL query to modify the course
                sql = "UPDATE course SET name = %s, hours = %s, type = %s WHERE id = %s"
                cursor.execute(sql, (course_name, credit, type, course_id))

                # Commit the changes
                self.connection.commit()

            return True
        except Exception as e:
            # Print any errors that occur
            print(f"An error occurred: {e}")
            return False

    def get_course_teacher(self, course_id):
        with self.connection.cursor() as cursor:
            # SQL 查询语句
            sql = """
                SELECT teacher.id, teacher.name, teacher_course.year, 
                teacher_course.semester, teacher_course.hours 
                FROM teacher_course
                INNER JOIN teacher ON teacher.id = teacher_course.teacher_id
                WHERE teacher_course.course_id = %s
            """

            # 执行查询
            cursor.execute(sql, (course_id,))

            # 获取查询结果
            results = cursor.fetchall()

        # 返回查询到的教师列表
        return results

    def delete_teacher_from_course(self, teacher_id, course_id):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                DELETE FROM teacher_course 
                WHERE teacher_id = %s AND course_id = %s
                """
                cursor.execute(sql, (int(teacher_id), int(course_id)))
                self.connection.commit()
                return cursor.rowcount > 0  # return True if deleted successfully
        except pymysql.MySQLError as e:
            print(f"Error while deleting teacher from course: {e}")
            return False

    def add_teacher_to_course(self, course_id, teacher_id, teacher_name, year, semester, hours):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                INSERT INTO teacher_course (course_id, teacher_id, year, semester, hours)
                VALUES (%s, %s, %s, %s, %s)
                """
                cursor.execute(sql, (course_id, teacher_id, year, semester, hours))
                self.connection.commit()
                return cursor.rowcount > 0
        except pymysql.MySQLError as e:
            print(f"Error while adding teacher to course: {e}")
            return False

    def get_project_by_name(self, name):
        projects = []
        try:
            with self.connection.cursor() as cursor:
                # search by regular expression *name*
                sql = "SELECT * FROM project WHERE name LIKE %s"
                cursor.execute(sql, ('%' + name + '%',))
                result = cursor.fetchall()

                # 1-国家级项目，2-省部级项目，3-市厅级项目，4-企业合作项目，5-其它类型项目
                for row in result:
                    if row['type'] == 1:
                        row['type'] = '国家级项目'
                    elif row['type'] == 2:
                        row['type'] = '省部级项目'
                    elif row['type'] == 3:
                        row['type'] = '市厅级项目'
                    elif row['type'] == 4:
                        row['type'] = '企业合作项目'
                    elif row['type'] == 5:
                        row['type'] = '其它类型项目'
                    projects.append(row)
        except pymysql.MySQLError as e:
            print(f"Error while getting projects: {e}")
            return None
        return projects

    def add_project(self, id, name, source, project_type, funding, start_year, end_year):
        try:
            with self.connection.cursor() as cursor:
                # Create a new record
                sql = """
                INSERT INTO project 
                (id, name, source, type, funding, start_year, end_year) 
                VALUES (%s, %s, %s, %s, %s, %s, %s)
                """
                cursor.execute(sql, (id, name, source, project_type, funding, start_year, end_year))

            # connection is not autocommit by default. So you must commit to save your changes.
            self.connection.commit()
            return True
        except pymysql.MySQLError as e:
            print(f"Error while adding project: {e}")
            return False

    def delete_project_by_id(self, project_id):
        try:
            with self.connection.cursor() as cursor:
                # First delete all entries from teacher_project related to this project
                sql = "DELETE FROM teacher_project WHERE project_id = %s"
                cursor.execute(sql, (project_id,))

                # Then delete the project itself
                sql = "DELETE FROM project WHERE id = %s"
                cursor.execute(sql, (project_id,))

            # Commit the changes
            self.connection.commit()
            return True
        except pymysql.MySQLError as e:
            print(f"Error while deleting project: {e}")
            self.connection.rollback()  # Rollback the changes on error
            return False

    def get_project_teacher(self, project_id):
        try:
            with self.connection.cursor() as cursor:
                sql = """SELECT t.id, t.name, tp.rank, tp.funding
                         FROM teacher t
                         JOIN teacher_project tp ON t.id = tp.teacher_id
                         WHERE tp.project_id = %s"""
                cursor.execute(sql, [project_id])
                results = cursor.fetchall()
        except pymysql.MySQLError as e:
            print(f"Error while getting project teachers: {e}")
            return None

        return results

    def delete_teacher_from_project(self, teacher_id, project_id):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                DELETE FROM teacher_project 
                WHERE teacher_id = %s AND project_id = %s
                """
                cursor.execute(sql, (teacher_id, project_id))
                self.connection.commit()
                return cursor.rowcount > 0  # return True if deleted successfully
        except pymysql.MySQLError as e:
            print(f"Error while deleting teacher from project: {e}")
            return False

    def add_teacher_to_project(self, project_id, teacher_id, rank, funds):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                INSERT INTO teacher_project (project_id, teacher_id, `rank`, funding)
                VALUES (%s, %s, %s, %s)
                """
                cursor.execute(sql, (project_id, teacher_id, rank, funds))
                self.connection.commit()
                return cursor.rowcount > 0
        except pymysql.MySQLError as e:
            print(f"Error while adding teacher to project: {e}")
            return False

    def modify_project(self, project_id, project_name, source, funding, type, start_year, end_year):
        try:
            if type == '国家级项目':
                type = 1
            elif type == '省部级项目':
                type = 2
            elif type == '市厅级项目':
                type = 3
            elif type == '企业合作项目':
                type = 4
            elif type == '其它类型项目':
                type = 5

            # Open a new cursor
            with self.connection.cursor() as cursor:

                # Construct the SQL query to modify the project
                sql = """
                UPDATE project
                SET name = %s, source = %s, type = %s, funding = %s, start_year = %s, end_year = %s
                WHERE id = %s
                """
                cursor.execute(sql, (project_name, source, type, funding, start_year, end_year, project_id))

                # Commit the changes
                self.connection.commit()

            return True
        except Exception as e:
            # Print any errors that occur
            print(f"An error occurred: {e}")
            return False

    def get_course_by_teacher_id(self, teacher_id):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                SELECT course.id, course.name, teacher_course.year, teacher_course.hours, teacher_course.semester 
                FROM course 
                JOIN teacher_course 
                ON course.id = teacher_course.course_id 
                WHERE teacher_course.teacher_id = %s
                """
                cursor.execute(sql, (teacher_id,))
                result = cursor.fetchall()
                return result
        except pymysql.MySQLError as e:
            print(f"Error while getting course by teacher ID: {e}")
            return None

    def get_project_by_teacher_id(self, teacher_id):
        try:
            with self.connection.cursor() as cursor:
                sql = """
                SELECT project.name, project.source, 
                CASE project.type
                    WHEN 1 THEN '国家级项目'
                    WHEN 2 THEN '省部级项目'
                    WHEN 3 THEN '市厅级项目'
                    WHEN 4 THEN '企业合作项目'
                    ELSE '其它类型项目'
                END AS project_type,
                project.start_year, project.end_year, project.funding as project_funding, teacher_project.funding as teacher_funding
                FROM teacher_project
                JOIN project ON teacher_project.project_id = project.id
                WHERE teacher_project.teacher_id = %s
                """
                cursor.execute(sql, (teacher_id,))
                results = cursor.fetchall()
                return results

        except pymysql.MySQLError as e:
            print(f"Error while getting project info: {e}")
            return None

    def close(self):
        self.connection.close()


if __name__ == '__main__':
    api = MySQLAPI()
    print(api.verify_user_password('admin', 'admn'))
    api.close()
