import tkinter as tk
from tkinter import messagebox
from tkinter import ttk

from api import MySQLAPI


class ProjectManagerWindow(tk.Toplevel):
    def __init__(self, account_type, master=None):
        super().__init__(master)
        # mysql api
        self.db_api = MySQLAPI()

        self.account_type = account_type

        self.geometry('800x600+300+150')

        self.search_var = tk.StringVar()
        self.search_var.set("请输入你想查询的项目名称")
        self.search_var.trace("w", self.update)
        self.entry = tk.Entry(self,
                              textvariable=self.search_var,
                              width=30,
                              font=('robot', 30))
        self.entry.place(x=20, y=20)

        # search button
        btn_search = tk.Button(self,
                               text='搜索',
                               command=self.search,
                               font=('robot', 30),
                               width=8)
        btn_search.place(x=600, y=20)

        # Treeview
        self.tree = ttk.Treeview(self,
                                 columns=('id', 'name', 'source', 'type', 'funding', 'start_year', 'end_year'),
                                 show='headings',
                                 height=25)
        self.tree.column('id', width=110, anchor='center')
        self.tree.column('name', width=150, anchor='center')
        self.tree.column('source', width=130, anchor='center')
        self.tree.column('type', width=75, anchor='center')
        self.tree.column('funding', width=120, anchor='center')
        self.tree.column('start_year', width=90, anchor='center')
        self.tree.column('end_year', width=90, anchor='center')

        self.tree.heading('id',
                          text='项目ID',
                          command=lambda: self.treeview_sort_column(self.tree, 'id', False))
        self.tree.heading('name',
                          text='项目名称',
                          command=lambda: self.treeview_sort_column(self.tree, 'name', False))
        self.tree.heading('source',
                          text='项目来源',
                          command=lambda: self.treeview_sort_column(self.tree, 'source', False))
        self.tree.heading('type',
                          text='项目类型',
                          command=lambda: self.treeview_sort_column(self.tree, 'type', False))
        self.tree.heading('funding',
                          text='项目经费',
                          command=lambda: self.treeview_sort_column(self.tree, 'funding', False))
        self.tree.heading('start_year',
                          text='开始年份',
                          command=lambda: self.treeview_sort_column(self.tree, 'start_year', False))
        self.tree.heading('end_year',
                          text='结束年份',
                          command=lambda: self.treeview_sort_column(self.tree, 'end_year', False))

        self.tree.place(x=20, y=70)

        # add button
        btn_add = tk.Button(self,
                            text='添加',
                            command=self.add,
                            font=('robot', 30),
                            width=8)
        btn_add.place(x=20, y=550)

        # delete button
        btn_delete = tk.Button(self,
                               text='删除',
                               command=self.delete,
                               font=('robot', 30),
                               width=8)
        btn_delete.place(x=310, y=550)

        # modify button
        btn_modify = tk.Button(self,
                               text='修改',
                               command=self.modify,
                               font=('robot', 30),
                               width=8)
        btn_modify.place(x=600, y=550)

        projects = self.db_api.get_project_by_name('')

        for project in projects:
            self.tree.insert('', 'end',
                             values=(project['id'], project['name'], project['source'], project['type'],
                                     project['funding'], project['start_year'], project['end_year']))

    # Define the sort function here
    def treeview_sort_column(self, tv, col, reverse):
        l = [(tv.set(k, col), k) for k in tv.get_children('')]
        l.sort(reverse=reverse)

        # rearrange items in sorted positions
        for index, (val, k) in enumerate(l):
            tv.move(k, '', index)

        # reverse sort next time
        tv.heading(col, command=lambda: self.treeview_sort_column(tv, col, not reverse))

    # Define the search function here
    def search(self):
        self.update()

    # Define the add function here
    def add(self):
        if self.account_type:
            AddProjectWindow(self.db_api, self)
        else:
            messagebox.showinfo('提示', '您没有添加项目的权限')

    # Define the delete function here
    def delete(self):
        if self.account_type:
            # Get the selected item
            selected_item = self.tree.selection()
            if selected_item:
                # Get the ID of the project
                project_id = self.tree.item(selected_item)["values"][0]

                # Delete the project from the database
                if self.db_api.delete_project_by_id(project_id):
                    # Show success message
                    tk.messagebox.showinfo(title='提示', message='删除成功')

                    # Delete the project from the treeview
                    self.tree.delete(selected_item)
                else:
                    # Show error message
                    tk.messagebox.showerror(title='错误', message='删除失败')
            else:
                tk.messagebox.showinfo(title='提示', message='请选择一个项目进行删除')
        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    # Define the modify function here
    def modify(self):
        if self.account_type:
            # Get the selected item
            selected_item = self.tree.selection()
            if selected_item:
                # Get the ID of the project
                project_id = self.tree.item(selected_item)["values"][0]
                project_name = self.tree.item(selected_item)["values"][1]
                project_source = self.tree.item(selected_item)["values"][2]
                project_type = self.tree.item(selected_item)["values"][3]
                project_funding = self.tree.item(selected_item)["values"][4]
                project_start_year = self.tree.item(selected_item)["values"][5]
                project_end_year = self.tree.item(selected_item)["values"][6]

                # Open the modify window
                ModifyProjectWindow(self.db_api, project_id, project_name, project_source, project_type,
                                    project_funding, project_start_year, project_end_year, self)
            else:
                tk.messagebox.showinfo(title='提示', message='请选择一个项目进行修改')
        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    # Define the update function here
    def update(self, *args):
        # get the input
        input_str = self.search_var.get()
        projects = self.db_api.get_project_by_name(input_str)
        # clear the tree
        for item in self.tree.get_children():
            self.tree.delete(item)
        # insert the new data
        for project in projects:
            self.tree.insert('', 'end',
                             values=(project['id'], project['name'], project['source'], project['type'],
                                     project['funding'], project['start_year'], project['end_year']))


class AddProjectWindow(tk.Toplevel):
    def __init__(self, db_api, master=None):
        super().__init__(master)
        self.master = master
        # mysql api
        self.db_api = db_api

        self.geometry('450x500+450+150')

        # project id label
        self.id_label = tk.Label(self,
                                 text='项目号:',
                                 font=('robot', 20))
        self.id_label.place(x=20, y=20)

        # project id entry
        self.id_var = tk.StringVar()
        self.id_entry = tk.Entry(self,
                                 textvariable=self.id_var,
                                 width=20,
                                 font=('robot', 20))
        self.id_entry.place(x=110, y=20)

        # project name label
        self.name_label = tk.Label(self,
                                   text='项目名称:',
                                   font=('robot', 20))
        self.name_label.place(x=20, y=80)

        # project name entry
        self.name_var = tk.StringVar()
        self.name_entry = tk.Entry(self,
                                   textvariable=self.name_var,
                                   width=20,
                                   font=('robot', 20))
        self.name_entry.place(x=110, y=80)

        # project source label
        self.source_label = tk.Label(self,
                                     text='项目来源:',
                                     font=('robot', 20))
        self.source_label.place(x=20, y=140)

        # project source entry
        self.source_var = tk.StringVar()
        self.source_entry = tk.Entry(self,
                                     textvariable=self.source_var,
                                     width=20,
                                     font=('robot', 20))
        self.source_entry.place(x=110, y=140)

        # project type label
        self.type_label = tk.Label(self,
                                   text='项目类型:',
                                   font=('robot', 20))
        self.type_label.place(x=20, y=200)

        # project type combobox
        self.type_var = tk.StringVar()
        self.type_combobox = ttk.Combobox(self,
                                          width=19,
                                          textvariable=self.type_var,
                                          font=('robot', 20))
        # 1-国家级项目，2-省部级项目，3-市厅级项目，4-企业合作项目，5-其它类型项目
        self.type_combobox['values'] = (
            '国家级项目', '省部级项目', '市厅级项目', '企业合作项目', '其它类型项目')  # options
        self.type_combobox.place(x=110, y=200)

        # project funding label
        self.funding_label = tk.Label(self,
                                      text='项目经费:',
                                      font=('robot', 20))
        self.funding_label.place(x=20, y=260)

        # project funding entry
        self.funding_var = tk.StringVar()
        self.funding_entry = tk.Entry(self,
                                      textvariable=self.funding_var,
                                      width=20,
                                      font=('robot', 20))
        self.funding_entry.place(x=110, y=260)

        # project start year label
        self.start_year_label = tk.Label(self,
                                         text='开始年份:',
                                         font=('robot', 20))
        self.start_year_label.place(x=20, y=320)

        # project start year entry
        self.start_year_var = tk.StringVar()
        self.start_year_entry = tk.Entry(self,
                                         textvariable=self.start_year_var,
                                         width=20,
                                         font=('robot', 20))
        self.start_year_entry.place(x=110, y=320)

        # project end year label
        self.end_year_label = tk.Label(self,
                                       text='结束年份:',
                                       font=('robot', 20))
        self.end_year_label.place(x=20, y=380)

        # project end year entry
        self.end_year_var = tk.StringVar()
        self.end_year_entry = tk.Entry(self,
                                       textvariable=self.end_year_var,
                                       width=20,
                                       font=('robot', 20))
        self.end_year_entry.place(x=110, y=380)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=10,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=150, y=440)

    def confirm(self):
        # Get the information of the project
        project_id = self.id_var.get()
        project_name = self.name_var.get()
        project_source = self.source_var.get()
        project_type = self.type_var.get()
        project_funding = self.funding_var.get()
        project_start_year = self.start_year_var.get()
        project_end_year = self.end_year_var.get()

        # Convert the project type to the corresponding number
        project_type_dict = {'国家级项目': 1, '省部级项目': 2, '市厅级项目': 3, '企业合作项目': 4, '其它类型项目': 5}
        if project_type in project_type_dict:
            project_type = project_type_dict[project_type]
        else:
            tk.messagebox.showerror(title='错误', message='项目类型错误')

        # Check if the information is complete
        if all([project_id, project_name, project_source, project_type, project_funding, project_start_year,
                project_end_year]):
            # Add the project to the database
            if self.db_api.add_project(project_id, project_name, project_source, project_type, project_funding,
                                       project_start_year, project_end_year):
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


class ModifyProjectWindow(tk.Toplevel):
    def __init__(self, db_api, project_id, project_name, source, type, funding, start_year, end_year, master=None):
        super().__init__(master)
        self.project_id = project_id
        self.project_name = project_name
        self.source = source
        self.funding = funding
        self.type = type
        self.start_year = start_year
        self.end_year = end_year
        self.db_api = db_api
        self.master = master

        self.geometry('400x500+600+230')

        # project_id label
        self.project_id_label = tk.Label(self,
                                         text='项目ID:',
                                         font=('robot', 20))
        self.project_id_label.place(x=20, y=20)

        # project_id entry
        self.project_id_var = tk.StringVar()
        self.project_id_var.set(self.project_id)
        self.project_id_entry = tk.Label(self,
                                         textvariable=self.project_id_var,
                                         font=('robot', 20))
        self.project_id_entry.place(x=110, y=20)

        # project_name label
        self.project_name_label = tk.Label(self,
                                           text='项目名称:',
                                           font=('robot', 20))
        self.project_name_label.place(x=20, y=80)

        # project_name entry
        self.project_name_var = tk.StringVar()
        self.project_name_var.set(self.project_name)
        self.project_name_entry = tk.Entry(self,
                                           textvariable=self.project_name_var,
                                           width=20,
                                           font=('robot', 20))
        self.project_name_entry.place(x=110, y=80)

        # source label
        self.source_label = tk.Label(self,
                                     text='项目来源:',
                                     font=('robot', 20))
        self.source_label.place(x=20, y=140)

        # source entry
        self.source_var = tk.StringVar()
        self.source_var.set(self.source)
        self.source_entry = tk.Entry(self,
                                     textvariable=self.source_var,
                                     width=20,
                                     font=('robot', 20))
        self.source_entry.place(x=110, y=140)

        # funding label
        self.funding_label = tk.Label(self,
                                      text='项目经费:',
                                      font=('robot', 20))
        self.funding_label.place(x=20, y=200)

        # funding entry
        self.funding_var = tk.StringVar()
        self.funding_var.set(self.funding)
        self.funding_entry = tk.Entry(self,
                                      textvariable=self.funding_var,
                                      width=20,
                                      font=('robot', 20))
        self.funding_entry.place(x=110, y=200)

        # type label
        self.type_label = tk.Label(self,
                                   text='项目类型:',
                                   font=('robot', 20))
        self.type_label.place(x=20, y=260)

        # type combobox
        self.type_var = tk.StringVar()
        self.type_var.set(self.type)
        self.type_combobox = ttk.Combobox(self,
                                          width=19,
                                          textvariable=self.type_var,
                                          font=('robot', 20))
        # 1-国家级项目，2-省部级项目，3-市厅级项目，4-企业合作项目，5-其它类型项目
        self.type_combobox['values'] = ('国家级项目', '省部级项目', '市厅级项目', '企业合作项目', '其它类型项目')  # 选项
        self.type_combobox.place(x=110, y=260)

        # start_year label
        self.start_year_label = tk.Label(self,
                                         text='开始年份:',
                                         font=('robot', 20))
        self.start_year_label.place(x=20, y=320)

        # start_year entry
        self.start_year_var = tk.StringVar()
        self.start_year_var.set(self.start_year)
        self.start_year_entry = tk.Entry(self,
                                         textvariable=self.start_year_var,
                                         width=20,
                                         font=('robot', 20))
        self.start_year_entry.place(x=110, y=320)

        # end_year label
        self.end_year_label = tk.Label(self,
                                       text='结束年份:',
                                       font=('robot', 20))
        self.end_year_label.place(x=20, y=380)

        # end_year entry
        self.end_year_var = tk.StringVar()
        self.end_year_var.set(self.end_year)
        self.end_year_entry = tk.Entry(self,
                                       textvariable=self.end_year_var,
                                       width=20,
                                       font=('robot', 20))
        self.end_year_entry.place(x=110, y=380)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=10,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=230, y=420)

        # add teacher button
        self.add_teacher_button = tk.Button(self,
                                            text='添加教师',
                                            width=10,
                                            height=1,
                                            font=('robot', 20),
                                            command=self.add_teacher)
        self.add_teacher_button.place(x=10, y=420)

    def confirm(self):
        # Get the updated values
        project_name = self.project_name_var.get()
        source = self.source_var.get()
        funding = self.funding_var.get()
        type = self.type_var.get()
        start_year = self.start_year_var.get()
        end_year = self.end_year_var.get()

        # Check if the information is complete
        if project_name and source and funding and type and start_year and end_year:
            # Modify the project in the database
            if self.db_api.modify_project(self.project_id, project_name, source, funding, type, start_year, end_year):
                tk.messagebox.showinfo(title='提示', message='修改成功')
                self.destroy()
            else:
                tk.messagebox.showerror(title='错误', message='请检查信息是否正确')
        else:
            tk.messagebox.showerror(title='错误', message='请填写完整信息')

    def add_teacher(self):
        AddTeacherWindow(self.db_api, self.project_id, self.funding, self.master)



class AddTeacherWindow(tk.Toplevel):
    def __init__(self, db_api, project_id, project_funds, master=None):
        super().__init__()
        self.db_api = db_api
        self.project_id = project_id
        self.project_funds = project_funds
        self.master = master

        self.geometry('480x400+600+230')

        # teacher treeview
        self.teacher_treeview = ttk.Treeview(self,
                                             height=17,
                                             show='headings',
                                             columns=('id', 'name', 'rank', 'funds'))
        self.teacher_treeview.column('id', width=100, anchor='center')
        self.teacher_treeview.column('name', width=120, anchor='center')
        self.teacher_treeview.column('rank', width=120, anchor='center')
        self.teacher_treeview.column('funds', width=120, anchor='center')
        self.teacher_treeview.heading('id', text='教师ID')
        self.teacher_treeview.heading('name', text='姓名')
        self.teacher_treeview.heading('rank', text='排名')
        self.teacher_treeview.heading('funds', text='承担经费')
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

        # rank label
        rank_label = tk.Label(add_window,
                              text='排名:',
                              font=('robot', 20))
        rank_label.place(x=20, y=120)

        # rank entry
        rank_var = tk.StringVar()
        rank_entry = tk.Entry(add_window,
                              width=11,
                              textvariable=rank_var,
                              font=('robot', 20))
        rank_entry.place(x=180, y=120)

        # funds label
        funds_label = tk.Label(add_window,
                               text='承担经费:',
                               font=('robot', 20))
        funds_label.place(x=20, y=170)

        # funds entry
        funds_var = tk.StringVar()
        funds_entry = tk.Entry(add_window,
                               width=11,
                               textvariable=funds_var,
                               font=('robot', 20))
        funds_entry.place(x=180, y=170)

        # confirm button
        confirm_button = tk.Button(add_window,
                                   text='确认',
                                   width=10,
                                   height=1,
                                   font=('robot', 20),
                                   command=lambda: self.add_confirm(id_var.get(),
                                                                    name_var.get(),
                                                                    rank_var.get(),
                                                                    funds_var.get(),
                                                                    add_window))
        confirm_button.place(x=100, y=270)

    def delete(self):
        selected = self.teacher_treeview.selection()
        if len(selected) == 0:
            tk.messagebox.showerror(title='错误', message='请选择要删除的教师')
            return
        teacher_id = self.teacher_treeview.item(selected[0], 'values')[0]
        success = self.db_api.delete_teacher_from_project(teacher_id, self.project_id)
        if success:
            tk.messagebox.showinfo(title='成功', message='教师删除成功')
            self.update()
        else:
            tk.messagebox.showerror(title='错误', message='教师删除失败')

    def update(self):
        project_teacher = self.db_api.get_project_teacher(self.project_id)
        self.teacher_treeview.delete(*self.teacher_treeview.get_children())
        for i in range(len(project_teacher)):
            self.teacher_treeview.insert('', i, values=(project_teacher[i]['id'],
                                                        project_teacher[i]['name'],
                                                        project_teacher[i]['rank'],
                                                        project_teacher[i]['funding']))

    def confirm(self):
        # check if the total funds is equal to the project funds
        total_funds = 0
        for i in range(len(self.teacher_treeview.get_children())):
            # get the funds of each teacher
            funding = self.teacher_treeview.item(self.teacher_treeview.get_children()[i], 'values')[3]
            funds = funding.removesuffix('.0')
            total_funds += int(funds)
        if total_funds != int(self.project_funds.removesuffix('.0')):
            tk.messagebox.showerror(title='错误', message='总经费不等于项目经费')
            return
        self.destroy()

    def add_confirm(self, id, name, rank, funds, window):
        if id == '' or name == '' or rank == '' or funds == '':
            tk.messagebox.showerror(title='错误', message='请填写完整信息')
            return

        # Check if the rank is unique
        for i in range(len(self.teacher_treeview.get_children())):
            if rank == self.teacher_treeview.item(self.teacher_treeview.get_children()[i], 'values')[2]:
                tk.messagebox.showerror(title='错误', message='排名不能重复')
                return

        success = self.db_api.add_teacher_to_project(self.project_id, id, rank, funds)
        if success:
            tk.messagebox.showinfo(title='成功', message='教师添加成功')
            self.update()
            window.destroy()
        else:
            tk.messagebox.showerror(title='错误', message='教师添加失败')


if __name__ == '__main__':
    root = tk.Tk()
    root.title('项目管理')
    root.geometry('800x600+300+150')
    # ProjectManagerWindow(1, root)
    api = MySQLAPI()
    # AddProjectWindow(api, root)
    # AddTeacherWindow(api, '2Z9RR37XNA', 173793, root)
    ModifyProjectWindow(api, '2Z9RR37XNA', 'test', 'test', 'test', '1234.0', 'test', 'test', root)
    root.mainloop()

