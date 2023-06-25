import tkinter as tk
from tkinter import messagebox
from tkinter import ttk

from api import MySQLAPI


class CourseManagementWindow(tk.Toplevel):
    def __init__(self, account_type, master=None):
        super().__init__(master)
        self.db_api = MySQLAPI()

        self.account_type = account_type

        self.geometry('800x600+300+150')

        self.search_var = tk.StringVar()
        self.search_var.set("请输入你想查询的课程名称")
        self.search_var.trace("w", self.update_tree)
        self.entry = tk.Entry(self,
                              textvariable=self.search_var,
                              width=30,
                              font=('robot', 30))
        self.entry.place(x=20, y=20)

        btn_search = tk.Button(self,
                               text='搜索',
                               command=self.search,
                               font=('robot', 30),
                               width=8)
        btn_search.place(x=600, y=20)

        self.tree = ttk.Treeview(self,
                                 columns=('course_id', 'name', 'hours', 'nature'),
                                 show='headings',
                                 height=24)
        self.tree.column('course_id', width=100, anchor='center')
        self.tree.column('name', width=220, anchor='center')
        self.tree.column('hours', width=220, anchor='center')
        self.tree.column('nature', width=220, anchor='center')

        self.tree.heading('course_id', text='课程号',
                          command=lambda: self.treeview_sort_column(self.tree, 'course_id', False))
        self.tree.heading('name', text='课程名称',
                          command=lambda: self.treeview_sort_column(self.tree, 'name', False))
        self.tree.heading('hours', text='学时数',
                          command=lambda: self.treeview_sort_column(self.tree, 'hours', False))
        self.tree.heading('nature', text='课程性质',
                          command=lambda: self.treeview_sort_column(self.tree, 'nature', False))

        self.tree.place(x=20, y=80)

        btn_add = tk.Button(self,
                            text='添加',
                            command=self.add,
                            font=('robot', 30),
                            width=8)
        btn_add.place(x=20, y=545)

        btn_delete = tk.Button(self,
                               text='删除',
                               command=self.delete,
                               font=('robot', 30),
                               width=8)
        btn_delete.place(x=310, y=545)

        btn_modify = tk.Button(self,
                               text='修改',
                               command=self.modify,
                               font=('robot', 30),
                               width=8)
        btn_modify.place(x=600, y=545)

        courses = self.db_api.get_course_by_name('')

        for course in courses:
            self.tree.insert('', 'end',
                             values=(course['id'], course['name'], course['hours'], course['type']))

    def update_tree(self, *args):
        search_term = self.search_var.get()

        # refresh the treeview
        for course in self.tree.get_children():
            self.tree.delete(course)

        courses = self.db_api.get_course_by_name(search_term)
        for course in courses:
            self.tree.insert('', 'end',
                             values=(course['id'], course['name'], course['hours'], course['type']))

    def search(self):
        self.update_tree()

    def add(self):
        # your implementation here
        if self.account_type:
            AddCourseWindow(self.db_api, self)
        else:
            messagebox.showerror(title='错误', message='权限不足')

    def delete(self):
        if self.account_type:
            # Get the selected item
            selected_item = self.tree.selection()
            if selected_item:
                # Get the ID of the course
                course_id = self.tree.item(selected_item)["values"][0]

                # Delete the course from the database
                if self.db_api.delete_course_by_id(course_id):
                    # Show success message
                    tk.messagebox.showinfo(title='提示', message='删除成功')

                    # Delete the course from the treeview
                    self.tree.delete(selected_item)
                else:
                    # Show error message
                    tk.messagebox.showerror(title='错误', message='删除失败')
            else:
                tk.messagebox.showinfo(title='提示', message='请选择一个课程进行删除')
        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    def modify(self):
        if self.account_type:
            # Get the selected item
            selected_item = self.tree.selection()
            if selected_item:
                # Get the ID of the course
                course_id = self.tree.item(selected_item)["values"][0]
                course_name = self.tree.item(selected_item)["values"][1]
                course_hours = self.tree.item(selected_item)["values"][2]
                course_nature = self.tree.item(selected_item)["values"][3]

                ModifyCourseWindow(self.db_api, course_id, course_name, course_hours, course_nature, self)
            else:
                tk.messagebox.showinfo(title='提示', message='请选择一个课程进行修改')
        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    def treeview_sort_column(self, tv, col, reverse):
        l = [(tv.set(k, col), k) for k in tv.get_children('')]
        l.sort(reverse=reverse)

        # rearrange items in sorted positions
        for index, (val, k) in enumerate(l):
            tv.move(k, '', index)

        # reverse sort next time
        tv.heading(col, command=lambda: self.treeview_sort_column(tv, col, not reverse))


class AddCourseWindow(tk.Toplevel):
    def __init__(self, db_api, master=None):
        super().__init__(master)
        self.master = master
        # mysql api
        self.db_api = db_api

        self.geometry('450x300+450+250')

        # course id label
        self.id_label = tk.Label(self,
                                 text='课程号:',
                                 font=('robot', 20))
        self.id_label.place(x=20, y=20)

        # course id entry
        self.id_var = tk.StringVar()
        self.id_entry = tk.Entry(self,
                                 textvariable=self.id_var,
                                 width=20,
                                 font=('robot', 20))
        self.id_entry.place(x=110, y=20)

        # course name label
        self.name_label = tk.Label(self,
                                   text='课程名称:',
                                   font=('robot', 20))
        self.name_label.place(x=20, y=80)

        # course name entry
        self.name_var = tk.StringVar()
        self.name_entry = tk.Entry(self,
                                   textvariable=self.name_var,
                                   width=20,
                                   font=('robot', 20))
        self.name_entry.place(x=110, y=80)

        # course hours label
        self.hours_label = tk.Label(self,
                                    text='学时数:',
                                    font=('robot', 20))
        self.hours_label.place(x=20, y=140)

        # course hours entry
        self.hours_var = tk.StringVar()
        self.hours_entry = tk.Entry(self,
                                    textvariable=self.hours_var,
                                    width=20,
                                    font=('robot', 20))
        self.hours_entry.place(x=110, y=140)

        # course nature label
        self.nature_label = tk.Label(self,
                                     text='课程性质:',
                                     font=('robot', 20))
        self.nature_label.place(x=20, y=200)

        # course nature combobox
        self.nature_var = tk.StringVar()
        self.nature_combobox = ttk.Combobox(self,
                                            width=19,
                                            textvariable=self.nature_var,
                                            font=('robot', 20))
        # 1-本科生课程，2-研究生课程
        self.nature_combobox['values'] = ('本科生课程', '研究生课程')  # options
        self.nature_combobox.place(x=110, y=200)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=10,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=150, y=250)

    def confirm(self):
        # Get the information of the course
        course_id = self.id_var.get()
        course_name = self.name_var.get()
        course_hours = self.hours_var.get()
        course_nature = self.nature_var.get()

        # Convert the course nature to the corresponding number
        if course_nature == '本科生课程':
            course_nature = 1
        elif course_nature == '研究生课程':
            course_nature = 2
        else:
            tk.messagebox.showerror(title='错误', message='课程性质错误')

        # Check if the information is complete
        if course_id and course_name and course_hours and course_nature:
            # Add the course to the database
            if self.db_api.add_course(course_id, course_name, course_hours, course_nature):
                # Show success message
                tk.messagebox.showinfo(title='提示', message='添加成功')

                # Close the window
                self.destroy()
            else:
                # Show error message
                tk.messagebox.showerror(title='错误', message='请检查信息是否正确')
        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='请填写完整信息')


class ModifyCourseWindow(tk.Toplevel):
    def __init__(self, db_api, course_id, course_name, credit, type, master=None):
        super().__init__(master)
        self.course_id = course_id
        self.course_name = course_name
        self.credit = credit
        self.type = type
        self.db_api = db_api
        self.master = master

        self.geometry('400x300+600+230')

        # course_id label
        self.course_id_label = tk.Label(self,
                                        text='课程ID:',
                                        font=('robot', 20))
        self.course_id_label.place(x=20, y=20)

        # course_id entry
        self.course_id_var = tk.StringVar()
        self.course_id_var.set(self.course_id)
        self.course_id_entry = tk.Label(self,
                                        textvariable=self.course_id_var,
                                        font=('robot', 20))
        self.course_id_entry.place(x=110, y=20)

        # course_name label
        self.course_name_label = tk.Label(self,
                                          text='课程名称:',
                                          font=('robot', 20))
        self.course_name_label.place(x=20, y=80)

        # course_name entry
        self.course_name_var = tk.StringVar()
        self.course_name_var.set(self.course_name)
        self.course_name_entry = tk.Entry(self,
                                          textvariable=self.course_name_var,
                                          width=20,
                                          font=('robot', 20))
        self.course_name_entry.place(x=110, y=80)

        # credit label
        self.credit_label = tk.Label(self,
                                     text='学分:',
                                     font=('robot', 20))
        self.credit_label.place(x=20, y=140)

        # credit entry
        self.credit_var = tk.StringVar()
        self.credit_var.set(self.credit)
        self.credit_entry = tk.Entry(self,
                                     textvariable=self.credit_var,
                                     width=20,
                                     font=('robot', 20))
        self.credit_entry.place(x=110, y=140)

        # type label
        self.type_label = tk.Label(self,
                                   text='课程类型:',
                                   font=('robot', 20))
        self.type_label.place(x=20, y=200)

        # type combobox
        self.type_var = tk.StringVar()
        self.type_var.set(self.type)
        self.type_combobox = ttk.Combobox(self,
                                          width=19,
                                          textvariable=self.type_var,
                                          font=('robot', 20))
        # 1-本科生课程，2-研究生课程
        self.type_combobox['values'] = ('本科生课程', '研究生课程')  # 选项
        self.type_combobox.place(x=110, y=200)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=10,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=220, y=250)

        # add teacher button
        self.add_teacher_button = tk.Button(self,
                                            text='添加教师',
                                            width=10,
                                            height=1,
                                            font=('robot', 20),
                                            command=self.add_teacher)
        self.add_teacher_button.place(x=10, y=250)

    def confirm(self):
        # Get the information of the course
        # new_course_id = self.course_id_var.get()
        course_name = self.course_name_var.get()
        credit = self.credit_var.get()
        type = self.type_var.get()

        # Check if the information is complete
        if course_name and credit and type:
            # Modify the course in the database
            if self.db_api.modify_course(self.course_id, course_name, credit, type):
                # Show success message
                tk.messagebox.showinfo(title='提示', message='修改成功')

                # Close the window
                self.destroy()
            else:
                # Show error message
                tk.messagebox.showerror(title='错误', message='请检查信息是否正确')
        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='请填写完整信息')

    def add_teacher(self):
        AddTeacherWindow(self.db_api, self.course_id, self.credit, self.master)


class AddTeacherWindow(tk.Toplevel):
    def __init__(self, db_api, course_id, course_hours, master=None):
        super().__init__()
        self.db_api = db_api
        self.course_id = course_id
        self.course_hours = course_hours
        self.master = master

        self.geometry('480x400+600+230')

        # teacher treeview
        self.teacher_treeview = ttk.Treeview(self,
                                             height=17,
                                             show='headings',
                                             columns=('id', 'name', 'year', 'semester', 'hours'))
        self.teacher_treeview.column('id', width=60, anchor='center')
        self.teacher_treeview.column('name', width=100, anchor='center')
        self.teacher_treeview.column('year', width=100, anchor='center')
        self.teacher_treeview.column('semester', width=100, anchor='center')
        self.teacher_treeview.column('hours', width=100, anchor='center')
        self.teacher_treeview.heading('id', text='教师ID')
        self.teacher_treeview.heading('name', text='姓名')
        self.teacher_treeview.heading('year', text='年份')
        self.teacher_treeview.heading('semester', text='学期')
        self.teacher_treeview.heading('hours', text='承担学时')
        self.teacher_treeview.place(x=10, y=10)

        self.update()

        # add button
        self.add_button = tk.Button(self,
                                    text='添加',
                                    width=8,
                                    height=1,
                                    font=('robot', 20),
                                    command=self.add)
        self.add_button.place(x=10, y=350)

        # delete button
        self.delete_button = tk.Button(self,
                                       text='删除',
                                       width=8,
                                       height=1,
                                       font=('robot', 20),
                                       command=self.delete)
        self.delete_button.place(x=170, y=350)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=8,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=330, y=350)

    def add(self):
        add_window = tk.Toplevel(self)
        add_window.geometry('350x320+600+230')

        # id label
        id_label = tk.Label(add_window,
                            text='教师ID:',
                            font=('robot', 20))
        id_label.place(x=20, y=20)

        # id entry
        id_var = tk.StringVar()
        id_entry = tk.Entry(add_window,
                            width=11,
                            textvariable=id_var,
                            font=('robot', 20))
        id_entry.place(x=180, y=20)

        # name label
        name_label = tk.Label(add_window,
                              text='姓名:',
                              font=('robot', 20))
        name_label.place(x=20, y=70)

        # name entry
        name_var = tk.StringVar()
        name_entry = tk.Entry(add_window,
                              width=11,
                              textvariable=name_var,
                              font=('robot', 20))
        name_entry.place(x=180, y=70)

        # year label
        year_label = tk.Label(add_window,
                              text='年份:',
                              font=('robot', 20))
        year_label.place(x=20, y=120)

        # year entry
        year_var = tk.StringVar()
        year_entry = tk.Entry(add_window,
                              width=11,
                              textvariable=year_var,
                              font=('robot', 20))
        year_entry.place(x=180, y=120)

        # semester label
        semester_label = tk.Label(add_window,
                                  text='学期:',
                                  font=('robot', 20))
        semester_label.place(x=20, y=170)

        # semester entry
        semester_var = tk.StringVar()
        semester_entry = tk.Entry(add_window,
                                  width=11,
                                  textvariable=semester_var,
                                  font=('robot', 20))
        semester_entry.place(x=180, y=170)

        # hours label
        hours_label = tk.Label(add_window,
                               text='承担学时:',
                               font=('robot', 20))
        hours_label.place(x=20, y=220)

        # hours entry
        hours_var = tk.StringVar()
        hours_entry = tk.Entry(add_window,
                               width=11,
                               textvariable=hours_var,
                               font=('robot', 20))
        hours_entry.place(x=180, y=220)

        # confirm button
        confirm_button = tk.Button(add_window,
                                   text='确认',
                                   width=10,
                                   height=1,
                                   font=('robot', 20),
                                   command=lambda: self.add_confirm(id_var.get(),
                                                                    name_var.get(),
                                                                    year_var.get(),
                                                                    semester_var.get(),
                                                                    hours_var.get(),
                                                                    add_window))
        confirm_button.place(x=100, y=270)

    def delete(self):
        selected = self.teacher_treeview.selection()
        if len(selected) == 0:
            tk.messagebox.showerror(title='错误', message='请选择要删除的教师')
            return
        teacher_id = self.teacher_treeview.item(selected[0], 'values')[0]
        success = self.db_api.delete_teacher_from_course(teacher_id, self.course_id)
        if success:
            tk.messagebox.showinfo(title='成功', message='教师删除成功')
            self.update()
        else:
            tk.messagebox.showerror(title='错误', message='教师删除失败')

    def update(self):
        course_teacher = self.db_api.get_course_teacher(self.course_id)
        self.teacher_treeview.delete(*self.teacher_treeview.get_children())
        for i in range(len(course_teacher)):
            self.teacher_treeview.insert('', i, values=(course_teacher[i]['id'],
                                                        course_teacher[i]['name'],
                                                        course_teacher[i]['year'],
                                                        course_teacher[i]['semester'],
                                                        course_teacher[i]['hours']))

    def confirm(self):
        # check if the total hours is equal to the course hours
        total_hours = 0
        for i in range(len(self.teacher_treeview.get_children())):
            total_hours += int(self.teacher_treeview.item(self.teacher_treeview.get_children()[i], 'values')[4])
        if total_hours != self.course_hours:
            tk.messagebox.showerror(title='错误', message='总学时不等于课程学时')
            return
        self.destroy()

    def add_confirm(self, id, name, year, semester, hours, window):
        if id == '' or name == '' or year == '' or semester == '' or hours == '':
            tk.messagebox.showerror(title='错误', message='请填写完整信息')
            return
        success = self.db_api.add_teacher_to_course(self.course_id, id, name, year, semester, hours)
        if success:
            tk.messagebox.showinfo(title='成功', message='教师添加成功')
            self.update()
            window.destroy()
        else:
            tk.messagebox.showerror(title='错误', message='教师添加失败')


if __name__ == '__main__':
    root = tk.Tk()
    root.withdraw()
    api = MySQLAPI()
    # app = CourseManagementWindow(1, root)
    AddTeacherWindow(api, 15821, 132, root)
    root.mainloop()
