import tkinter as tk
from tkinter import messagebox

from api import MySQLAPI
from course_manage_window import CourseManagementWindow
from paper_manage_window import PaperManagementWindow
from project_manage_window import ProjectManagerWindow
from query_window import QueryWindow


class LoginWindow:
    def __init__(self):
        self.window = tk.Tk()
        self.window.title('教学科研登记系统')
        self.window.geometry('450x300+450+250')

        self.api = MySQLAPI()

        # welcome to image
        self.canvas = tk.Canvas(self.window, height=200, width=500)
        self.image_file = tk.PhotoImage(file='./images/welcome.gif')
        self.image = self.canvas.create_image(0, 0, anchor='nw', image=self.image_file)
        self.canvas.pack(side='top')

        # user information
        tk.Label(self.window, text='User name: ').place(x=50, y=150)
        tk.Label(self.window, text='Password: ').place(x=50, y=190)

        self.var_usr_name = tk.StringVar()
        self.var_usr_name.set('example@ustc.edu.cn')
        self.entry_usr_name = tk.Entry(self.window, textvariable=self.var_usr_name)
        self.entry_usr_name.place(x=160, y=150)
        self.var_usr_pwd = tk.StringVar()
        self.entry_usr_pwd = tk.Entry(self.window, textvariable=self.var_usr_pwd, show='*')
        self.entry_usr_pwd.place(x=160, y=190)

        # login and sign up button
        btn_login = tk.Button(self.window, text='Login', command=self.usr_login)
        btn_login.place(x=170, y=230)
        btn_sign_up = tk.Button(self.window, text='Sign up', command=self.usr_sign_up)
        btn_sign_up.place(x=270, y=230)

        self.window.mainloop()

    def usr_login(self):
        usr_name = self.var_usr_name.get()
        usr_pwd = self.var_usr_pwd.get()
        is_valid, account_type = self.api.verify_user_password(usr_name, usr_pwd)
        if is_valid:
            self.window.destroy()
            self.api.close()
            MainWindow(usr_name, account_type)
        else:
            is_sign_up = tk.messagebox.askyesno('Welcome',
                                                'Invalid login. Would you like to create an account?')
            if is_sign_up:
                self.usr_sign_up()

    def usr_sign_up(self):
        def sign_to_database():
            np = new_pwd.get()
            npf = new_pwd_confirm.get()
            nn = new_name.get()
            if np != npf:
                tk.messagebox.showerror('Error', 'Password and confirm password must be the same!')
            else:
                if self.api.add_new_user(nn, np) == 1:
                    tk.messagebox.showinfo('Welcome', 'You have successfully signed up!')
                    window_sign_up.destroy()
                elif self.api.add_new_user(nn, np) == 2:
                    tk.messagebox.showerror('Error', 'The user name has already existed!')
                else:
                    tk.messagebox.showerror('Error', 'Unknown error!')

        window_sign_up = tk.Toplevel(self.window)
        window_sign_up.geometry('350x200+500+300')
        window_sign_up.title('Sign up window')

        new_name = tk.StringVar()
        new_name.set('example@ustc.edu.cn')
        tk.Label(window_sign_up, text='User name: ').place(x=10, y=10)
        entry_new_name = tk.Entry(window_sign_up, textvariable=new_name)
        entry_new_name.place(x=150, y=10)

        new_pwd = tk.StringVar()
        tk.Label(window_sign_up, text='Password: ').place(x=10, y=50)
        entry_usr_pwd = tk.Entry(window_sign_up, textvariable=new_pwd, show='*')
        entry_usr_pwd.place(x=150, y=50)

        new_pwd_confirm = tk.StringVar()
        tk.Label(window_sign_up, text='Confirm password: ').place(x=10, y=90)
        entry_usr_pwd_confirm = tk.Entry(window_sign_up, textvariable=new_pwd_confirm, show='*')
        entry_usr_pwd_confirm.place(x=150, y=90)

        btn_comfirm_sign_up = tk.Button(window_sign_up, text='Sign up', command=sign_to_database)
        btn_comfirm_sign_up.place(x=150, y=130)


class MainWindow:
    def __init__(self, username, account_type):
        self.type = account_type
        self.window = tk.Tk()
        self.window.title('教学科研登记系统')
        self.window.geometry('520x230+450+250')

        self.username = username

        # Add a label to welcome user
        tk.Label(self.window, text=f'欢迎来到教学科研登记系统， {username}',
                 font=('robot', 20)).place(x=20, y=20)

        # Log out button
        btn_logout = tk.Button(self.window,
                               text='Log Out',
                               command=self.log_out,
                               font=('robot', 15))
        btn_logout.place(x=410, y=20)

        # Create buttons for each function
        btn_paper = tk.Button(self.window,
                              text='登记发表论文情况',
                              command=self.register_paper,
                              font=('robot', 20),
                              width=15,
                              height=2)
        btn_paper.place(x=20, y=80)
        btn_project = tk.Button(self.window,
                                text='登记承担项目情况',
                                command=self.register_project,
                                font=('robot', 20),
                                width=15,
                                height=2)
        btn_project.place(x=270, y=80)
        btn_course = tk.Button(self.window,
                               text='登记主讲课程情况',
                               command=self.register_course,
                               font=('robot', 20),
                               width=15,
                               height=2)
        btn_course.place(x=20, y=150)
        btn_query = tk.Button(self.window,
                              text='查询统计',
                              command=self.query_statistic,
                              font=('robot', 20),
                              width=15,
                              height=2)
        btn_query.place(x=270, y=150)

        self.window.mainloop()

    def register_paper(self):
        # Open the register paper window
        PaperManagementWindow(self.type, self.window)

    def register_project(self):
        # Open the register project window
        ProjectManagerWindow(self.type, self.window)

    def register_course(self):
        # Open the register course window
        CourseManagementWindow(self.type, self.window)

    def query_statistic(self):
        # Open the query statistic window
        QueryWindow(self.window)

    def log_out(self):
        # Log out function
        self.window.destroy()  # Close current window
        LoginWindow()  # Go back to Login window


if __name__ == '__main__':
    app = MainWindow('Haozhe Sun', 0)
