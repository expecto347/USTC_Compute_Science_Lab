import tkinter as tk
from tkinter import messagebox
from tkinter import ttk

from tkcalendar import DateEntry

from api import MySQLAPI


class PaperManagementWindow(tk.Toplevel):
    def __init__(self, account_type, master=None):
        super().__init__(master)
        # mysql api
        self.db_api = MySQLAPI()

        self.account_type = account_type

        self.geometry('800x600+300+150')

        self.search_var = tk.StringVar()
        self.search_var.set("请输入你想查询的论文名称")
        self.search_var.trace("w", self.update_tree)
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
                                 columns=('name', 'journal', 'date', 'type', 'level'),
                                 show='headings',
                                 height=25)
        self.tree.column('name', width=153, anchor='center')
        self.tree.column('journal', width=153, anchor='center')
        self.tree.column('date', width=153, anchor='center')
        self.tree.column('type', width=153, anchor='center')
        self.tree.column('level', width=153, anchor='center')

        self.tree.heading('name',
                          text='论文名称',
                          command=lambda: self.treeview_sort_column(self.tree, 'name', False))
        self.tree.heading('journal',
                          text='期刊名称',
                          command=lambda: self.treeview_sort_column(self.tree, 'journal', False))
        self.tree.heading('date',
                          text='发表日期',
                          command=lambda: self.treeview_sort_column(self.tree, 'date', False))
        self.tree.heading('type',
                          text='论文类型',
                          command=lambda: self.treeview_sort_column(self.tree, 'type', False))
        self.tree.heading('level',
                          text='论文等级',
                          command=lambda: self.treeview_sort_column(self.tree, 'level', False))

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

        papers = self.db_api.get_paper_by_name('')

        for paper in papers:
            self.tree.insert('', 'end',
                             values=(paper['name'], paper['journal'], paper['date'], paper['type'], paper['level']))

    def update_tree(self, *args):
        papers = self.db_api.get_paper_by_name(self.search_var.get())
        self.tree.delete(*self.tree.get_children())
        for paper in papers:
            self.tree.insert('', 'end',
                             values=(paper['name'], paper['journal'], paper['date'], paper['type'], paper['level']))

    def search(self):
        self.update_tree()

    def add(self):
        if self.account_type:
            AddWindow(self.db_api, self)
        else:
            # show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    def delete(self):
        if self.account_type:
            # Get the selected item
            selected_item = self.tree.selection()
            if selected_item:
                # Get the name of the paper
                paper_name = self.tree.item(selected_item)["values"][0]

                # Delete the paper from the database
                if self.db_api.delete_paper_by_name(paper_name):
                    # Show success message
                    tk.messagebox.showinfo(title='提示', message='删除成功')

                    # Delete the paper from the treeview
                    self.tree.delete(selected_item)
                else:
                    # Show error message
                    tk.messagebox.showerror(title='错误', message='删除失败')

            else:
                tk.messagebox.showinfo(title='提示', message='请选择一个论文进行删除')

        else:
            # Show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    def modify(self):
        if self.account_type:
            # get the selected item
            selected_item = self.tree.selection()
            if selected_item:
                # get the name of the paper
                paper_name = self.tree.item(selected_item)["values"][0]
                journal_name = self.tree.item(selected_item)["values"][1]
                publish_date = self.tree.item(selected_item)["values"][2]
                paper_type = self.tree.item(selected_item)["values"][3]
                paper_level = self.tree.item(selected_item)["values"][4]

                # open the modify window
                ModifyWindow(self.db_api, paper_name, journal_name, publish_date, paper_type, paper_level, self)
            else:
                tk.messagebox.showinfo(title='提示', message='请选择一个论文进行修改')

        else:
            # show error message
            tk.messagebox.showerror(title='错误', message='您没有权限进行此操作')

    def treeview_sort_column(self, tv, col, reverse):
        l = [(tv.set(k, col), k) for k in tv.get_children('')]
        l.sort(reverse=reverse)

        # rearrange items in sorted positions
        for index, (val, k) in enumerate(l):
            tv.move(k, '', index)

        # reverse sort next time
        tv.heading(col, command=lambda: self.treeview_sort_column(tv, col, not reverse))


class AddWindow(tk.Toplevel):
    def __init__(self, db_api, master=None):
        super().__init__(master)
        self.master = master
        # mysql api
        self.db_api = db_api

        self.geometry('450x300+450+250')

        # name label
        self.name_label = tk.Label(self,
                                   text='论文名称:',
                                   font=('robot', 20))
        self.name_label.place(x=20, y=20)

        # name entry
        self.name_var = tk.StringVar()
        self.name_entry = tk.Entry(self,
                                   textvariable=self.name_var,
                                   width=20,
                                   font=('robot', 20))
        self.name_entry.place(x=110, y=20)

        # journal label
        self.journal_label = tk.Label(self,
                                      text='期刊名称:',
                                      font=('robot', 20))
        self.journal_label.place(x=20, y=80)

        # journal entry
        self.journal_var = tk.StringVar()
        self.journal_entry = tk.Entry(self,
                                      textvariable=self.journal_var,
                                      width=20,
                                      font=('robot', 20))
        self.journal_entry.place(x=110, y=80)

        # publication date
        self.date_label = tk.Label(self,
                                   text='发表日期:',
                                   font=('robot', 20))
        self.date_label.place(x=20, y=130)

        # date entry
        self.date_entry = DateEntry(self,
                                    width=19,
                                    font=('robot', 20),
                                    date_pattern='y-mm-dd')
        self.date_entry.place(x=110, y=130)

        # type label
        self.type_label = tk.Label(self,
                                   text='论文类型:',
                                   font=('robot', 20))
        self.type_label.place(x=20, y=170)

        # type combobox
        self.type_var = tk.StringVar()
        self.type_combobox = ttk.Combobox(self,
                                          width=19,
                                          textvariable=self.type_var,
                                          font=('robot', 20))
        # 1-full paper，2-short paper，3-poster paper，4-demo paper
        self.type_combobox['values'] = ('full paper', 'short paper', 'poster paper', 'demo paper')  # 选项
        self.type_combobox.place(x=110, y=170)

        # level label
        self.level_label = tk.Label(self,
                                    text='论文级别:',
                                    font=('robot', 20))
        self.level_label.place(x=20, y=210)

        # level combobox
        self.level_var = tk.StringVar()
        self.level_combobox = ttk.Combobox(self,
                                           width=19,
                                           textvariable=self.level_var,
                                           font=('robot', 20))
        # 1-CCF-A，2-CCF-B，3-CCF-C，4-中文 CCF-A，5-中文 CCF-B，6-无级别
        self.level_combobox['values'] = ('CCF-A', 'CCF-B', 'CCF-C', '中文 CCF-A', '中文 CCF-B', '无级别')  # 选项
        self.level_combobox.place(x=110, y=210)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=10,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=150, y=250)

    def confirm(self):
        # Get the information of the paper
        name = self.name_var.get()
        journal = self.journal_var.get()
        date = self.date_entry.get_date()
        paper_type = self.type_var.get()
        level = self.level_var.get()

        # Check if the information is complete
        if name and journal and date and paper_type and level:
            # Add the paper to the database
            if self.db_api.add_paper(name, journal, date, paper_type, level):
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


class ModifyWindow(tk.Toplevel):
    def __init__(self, db_api, name, journal, date, paper_type, level, master=None):
        super().__init__()
        self.journal = journal
        self.name = name
        self.date = date
        self.paper_type = paper_type
        self.level = level
        self.db_api = db_api
        self.master = master

        self.geometry('400x300+600+230')

        # name label
        self.name_label = tk.Label(self,
                                   text='论文名称:',
                                   font=('robot', 20))
        self.name_label.place(x=20, y=20)

        # name entry
        self.name_var = tk.StringVar()
        self.name_var.set(self.name)
        self.name_entry = tk.Entry(self,
                                   textvariable=self.name_var,
                                   width=20,
                                   font=('robot', 20))
        self.name_entry.place(x=110, y=20)

        # journal label
        self.journal_label = tk.Label(self,
                                      text='期刊名称:',
                                      font=('robot', 20))
        self.journal_label.place(x=20, y=80)

        # journal entry
        self.journal_var = tk.StringVar()
        self.journal_var.set(self.journal)
        self.journal_entry = tk.Entry(self,
                                      textvariable=self.journal_var,
                                      width=20,
                                      font=('robot', 20))
        self.journal_entry.place(x=110, y=80)

        # publication date
        self.date_label = tk.Label(self,
                                   text='发表日期:',
                                   font=('robot', 20))
        self.date_label.place(x=20, y=130)

        # date entry
        self.date_entry = DateEntry(self,
                                    width=19,
                                    font=('robot', 20),
                                    date_pattern='y-mm-dd')
        self.date_entry.set_date(self.date)
        self.date_entry.place(x=110, y=130)

        # type label
        self.type_label = tk.Label(self,
                                   text='论文类型:',
                                   font=('robot', 20))
        self.type_label.place(x=20, y=170)

        # type combobox
        self.type_var = tk.StringVar()
        self.type_var.set(self.paper_type)
        self.type_combobox = ttk.Combobox(self,
                                          width=19,
                                          textvariable=self.type_var,
                                          font=('robot', 20))
        # 1-full paper，2-short paper，3-poster paper，4-demo paper
        self.type_combobox['values'] = ('full paper', 'short paper', 'poster paper', 'demo paper')  # 选项
        self.type_combobox.place(x=110, y=170)

        # level label
        self.level_label = tk.Label(self,
                                    text='论文级别:',
                                    font=('robot', 20))
        self.level_label.place(x=20, y=210)

        # level combobox
        self.level_var = tk.StringVar()
        self.level_var.set(self.level)
        self.level_combobox = ttk.Combobox(self,
                                           width=19,
                                           textvariable=self.level_var,
                                           font=('robot', 20))
        # 1-CCF-A，2-CCF-B，3-CCF-C，4-中文 CCF-A，5-中文 CCF-B，6-无级别
        self.level_combobox['values'] = ('CCF-A', 'CCF-B', 'CCF-C', '中文 CCF-A', '中文 CCF-B', '无级别')  # 选项
        self.level_combobox.place(x=110, y=210)

        # author button
        self.author_button = tk.Button(self,
                                       text='修改论文作者',
                                       width=10,
                                       height=1,
                                       font=('robot', 20),
                                       command=self.add_author)
        self.author_button.place(x=10, y=250)

        # confirm button
        self.confirm_button = tk.Button(self,
                                        text='确认',
                                        width=10,
                                        height=1,
                                        font=('robot', 20),
                                        command=self.confirm)
        self.confirm_button.place(x=220, y=250)

    def confirm(self):
        # Get all the values from the widgets
        name = self.name_var.get()
        journal = self.journal_var.get()
        date = self.date_entry.get_date()
        paper_type = self.type_var.get()
        level = self.level_var.get()

        # Check if any of the fields are empty
        if not all([name, journal, date, paper_type, level]):
            tk.messagebox.showerror(title='错误', message='所有字段都必须填写')
            return

        # Update the paper
        success = self.db_api.modify_paper_by_name(self.name, name, journal, date, paper_type, level)
        if success:
            # If the update was successful, close the window
            tk.messagebox.showinfo(title='成功', message='论文修改成功')
            self.destroy()
        else:
            # If there was an error, display a message
            tk.messagebox.showerror(title='错误', message='论文修改失败，请检查输入的信息')

    def add_author(self):
        AddAuthorWindow(self.db_api, self.name, self.master)


class AddAuthorWindow(tk.Toplevel):
    def __init__(self, db_api, paper_name, master=None):
        super().__init__()
        self.db_api = db_api
        self.paper_name = paper_name
        self.master = master

        self.geometry('372x300+600+230')

        # name treeview
        self.name_treeview = ttk.Treeview(self,
                                          height=12,
                                          show='headings',
                                          columns=('rank', 'name', 'is_corresponding_author'))
        self.name_treeview.column('rank', width=50, anchor='center')
        self.name_treeview.column('name', width=200, anchor='center')
        self.name_treeview.column('is_corresponding_author', width=100, anchor='center')
        self.name_treeview.heading('rank', text='排名')
        self.name_treeview.heading('name', text='姓名')
        self.name_treeview.heading('is_corresponding_author', text='是否通讯作者')
        self.name_treeview.place(x=10, y=10)

        self.update()

        # add button
        self.add_button = tk.Button(self,
                                    text='添加',
                                    width=10,
                                    height=1,
                                    font=('robot', 20),
                                    command=self.add)
        self.add_button.place(x=10, y=260)

        # delete button
        self.delete_button = tk.Button(self,
                                       text='删除',
                                       width=10,
                                       height=1,
                                       font=('robot', 20),
                                       command=self.delete)
        self.delete_button.place(x=200, y=260)

    def add(self):
        add_window = tk.Toplevel(self)
        add_window.geometry('350x220+600+230')

        # rank label
        rank_label = tk.Label(add_window,
                              text='排名:',
                              font=('robot', 20))
        rank_label.place(x=20, y=20)

        # rank combobox
        rank_var = tk.StringVar()
        rank_combobox = ttk.Combobox(add_window,
                                     width=10,
                                     textvariable=rank_var,
                                     font=('robot', 20))
        rank_combobox['values'] = ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10')  # 选项
        rank_combobox.place(x=180, y=20)

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

        # is corresponding label
        is_corresponding_label = tk.Label(add_window,
                                          text='是否通讯作者:',
                                          font=('robot', 20))
        is_corresponding_label.place(x=20, y=120)

        # is corresponding combobox
        is_corresponding_var = tk.StringVar()
        is_corresponding_combobox = ttk.Combobox(add_window,
                                                 width=10,
                                                 textvariable=is_corresponding_var,
                                                 font=('robot', 20))
        is_corresponding_combobox['values'] = ('是', '否')
        is_corresponding_combobox.place(x=180, y=120)

        # confirm button
        confirm_button = tk.Button(add_window,
                                   text='确认',
                                   width=10,
                                   height=1,
                                   font=('robot', 20),
                                   command=lambda: self.confirm(rank_var.get(),
                                                                name_var.get(),
                                                                is_corresponding_var.get(),
                                                                add_window))
        confirm_button.place(x=100, y=170)

    def delete(self):
        selected = self.name_treeview.selection()
        if len(selected) == 0:
            tk.messagebox.showerror(title='错误', message='请选择要删除的作者')
            return
        rank = self.name_treeview.item(selected[0], 'values')[0]
        success = self.db_api.delete_author(self.paper_name, rank)
        if success:
            tk.messagebox.showinfo(title='成功', message='作者删除成功')
            self.update()
        else:
            tk.messagebox.showerror(title='错误', message='作者删除失败')

    def update(self):
        paper_author = self.db_api.get_paper_author(self.paper_name)
        self.name_treeview.delete(*self.name_treeview.get_children())
        for i in range(len(paper_author)):
            is_corresponding = '是' if paper_author[i]['is_corresponding_author'] else '否'
            self.name_treeview.insert('', i,
                                      values=(paper_author[i]['rank'],
                                              paper_author[i]['name'],
                                              is_corresponding))

    def confirm(self, rank, teacher_name, is_corresponding, window):
        # Check if the input is valid
        if rank == '':
            tk.messagebox.showerror(title='错误', message='排名不能为空')
            return
        if teacher_name == '':
            tk.messagebox.showerror(title='错误', message='姓名不能为空')
            return
        if is_corresponding == '':
            tk.messagebox.showerror(title='错误', message='是否通讯作者不能为空')
            return

        # Check if the rank is valid
        try:
            rank = int(rank)
        except ValueError:
            tk.messagebox.showerror(title='错误', message='排名必须为整数')
            return
        if rank < 1 or rank > 10:
            tk.messagebox.showerror(title='错误', message='排名必须在1-10之间')
            return

        # Check if the rank is already used
        paper_author = self.db_api.get_paper_author(self.paper_name)
        for i in range(len(paper_author)):
            if rank == paper_author[i]['rank']:
                tk.messagebox.showerror(title='错误', message='排名已被使用')
                return

        # Only one corresponding author is allowed
        if is_corresponding == '是':
            for i in range(len(paper_author)):
                if paper_author[i]['is_corresponding_author']:
                    tk.messagebox.showerror(title='错误', message='只能有一个通讯作者')
                    return

        # convert is_corresponding to boolean
        is_corresponding = 1 if is_corresponding == '是' else 0

        success = self.db_api.add_teacher_paper_relation(self.paper_name, teacher_name, rank, is_corresponding)

        print(success)
        if success:
            tk.messagebox.showinfo(title='成功', message='作者添加成功')
            window.destroy()
            self.update()
        else:
            tk.messagebox.showerror(title='错误', message='请检查信息是否正确')


if __name__ == '__main__':
    root = tk.Tk()
    api = MySQLAPI()  # Replace with your actual database API
    # app = PaperManagementWindow(1, master=root)
    # AddWindow(api, master=root)
    # ModifyWindow(api, 'test', 'test', '2023-12-01', 'test', 'test', master=root)
    AddAuthorWindow(api, 'Paper A', root)
    root.mainloop()
