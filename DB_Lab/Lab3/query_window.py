import os
import tkinter as tk
from tkinter import messagebox

from api import MySQLAPI


class QueryWindow(tk.Toplevel):
    def __init__(self, master=None):
        super().__init__(master)
        self.db_api = MySQLAPI()
        self.master = master

        self.geometry('400x250+600+230')

        # teacher_id label
        self.teacher_id_label = tk.Label(self,
                                         text='教师ID:',
                                         font=('robot', 20))
        self.teacher_id_label.place(x=20, y=20)

        # teacher_id entry
        self.teacher_id_var = tk.StringVar()
        self.teacher_id_entry = tk.Entry(self,
                                         textvariable=self.teacher_id_var,
                                         width=20,
                                         font=('robot', 20))
        self.teacher_id_entry.place(x=110, y=20)

        # start_year label
        self.start_year_label = tk.Label(self,
                                         text='开始年份:',
                                         font=('robot', 20))
        self.start_year_label.place(x=20, y=80)

        # start_year entry
        self.start_year_var = tk.StringVar()
        self.start_year_entry = tk.Entry(self,
                                         textvariable=self.start_year_var,
                                         width=20,
                                         font=('robot', 20))
        self.start_year_entry.place(x=110, y=80)

        # end_year label
        self.end_year_label = tk.Label(self,
                                       text='结束年份:',
                                       font=('robot', 20))
        self.end_year_label.place(x=20, y=140)

        # end_year entry
        self.end_year_var = tk.StringVar()
        self.end_year_entry = tk.Entry(self,
                                       textvariable=self.end_year_var,
                                       width=20,
                                       font=('robot', 20))
        self.end_year_entry.place(x=110, y=140)

        # query button
        self.query_button = tk.Button(self,
                                      text='查询并导出',
                                      width=10,
                                      height=1,
                                      font=('robot', 20),
                                      command=self.query)
        self.query_button.place(x=130, y=200)

    def query(self):
        teacher_id = self.teacher_id_var.get()
        start_year = self.start_year_var.get()
        end_year = self.end_year_var.get()

        if teacher_id and start_year and end_year:
            filename = "./export/" + teacher_id + "_" + start_year + "_" + end_year + ".md"
            with open(filename, "w") as f:
                f.write("# 教师教学科研统计(" + start_year + "-" + end_year + ")\n")
                f.write("## 教师基本信息\n")
                teacher_info = self.db_api.get_teacher_by_id(teacher_id)
                if teacher_info:
                    f.write("**工号：**" + teacher_info[0]['id'] +
                            "\n**姓名：**" + teacher_info[0]['name'] +
                            "\n**性别：**" + teacher_info[0]['sex'] +
                            "\n**职称：**" + teacher_info[0]['position'] + "\n")
                    f.write("## 教学信息\n")
                    course_info = self.db_api.get_course_by_teacher_id(teacher_id)
                    course_valid = []
                    for course in course_info:
                        if int(start_year) <= int(course['year']) <= int(end_year):
                            course_valid.append(course)
                    if course_valid:
                        f.write("|课程号|课程名称|学时|学期|\n")
                        f.write("|:---:|:---:|:---:|:---:|\n")
                        for course in course_valid:
                            f.write("|" + str(course['id']) + "|" +
                                    course['name'] + "|" +
                                    str(course['hours']) + "|" +
                                    str(course['semester']) + "|\n")
                    else:
                        f.write("无\n")

                    f.write("## 发表论文情况\n")
                    paper_info = self.db_api.get_paper_by_teacher_id(teacher_id)
                    paper_valid = []
                    if paper_info:
                        for paper in paper_info:
                            paper_year = paper['date'].year
                            if int(start_year) <= int(paper_year) <= int(end_year):
                                paper_valid.append(paper)
                    if paper_valid:
                        f.write("|论文名称|发表刊物|发表日期|论文等级|排名|是否是通讯作者|\n")
                        f.write("|:---:|:---:|:---:|:---:|:---:|:---:|\n")
                        for paper in paper_valid:
                            f.write("|" + paper['name'] + "|" +
                                    paper['journal'] + "|" +
                                    str(paper['date']) + "|" +
                                    paper['level'] + "|" +
                                    str(paper['rank']) + "|" +
                                    paper['is_corresponding_author'] + "|\n")
                    else:
                        f.write("无\n")

                    f.write("## 承担项目情况\n")
                    project_info = self.db_api.get_project_by_teacher_id(teacher_id)
                    project_valid = []
                    if project_info:
                        for project in project_info:
                            if int(start_year) <= int(project['start_year']) or int(end_year) >= int(project['end_year']):
                                project_valid.append(project)
                    if project_valid:
                        f.write("|项目名称|项目级别|项目来源|项目经费|起始年份|结束年份|承担经费|\n")
                        f.write("|:---:|:---:|:---:|:---:|:---:|:---:|:---:|\n")
                        for project in project_valid:
                            f.write("|" + project['name'] + "|" +
                                    project['project_type'] + "|" +
                                    project['source'] + "|" +
                                    str(project['project_funding']) + "|" +
                                    str(project['start_year']) + "|" +
                                    str(project['end_year']) + "|" +
                                    str(project['teacher_funding']) + "|\n")
                    else:
                        f.write("无\n")

                    os.system("open " + filename)
                else:
                    tk.messagebox.showerror(title='错误', message='教师ID不存在')
        else:
            tk.messagebox.showerror(title='错误', message='请填写完整信息')


if __name__ == '__main__':
    db_api = MySQLAPI()
    root = tk.Tk()
    query_window = QueryWindow(db_api, root)
    root.mainloop()
