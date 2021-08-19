#! /usr/bin/python
import os
import tkinter as tk
import tkinter.font as font

def shtdwn():
	os.system("shutdown -h now")
def reboot():
	os.system("reboot")
def logout():
	os.system("pkill -KILL -u $USER")

window = tk.Tk()
window.geometry("+425+300")

cancel_button = tk.Button(
    text="Cancel",
	font="size=30",
    width=10,
    bg="white",
    fg="black",
	command=exit
)
shutdown_button = tk.Button(
    text="  Shutdown",
	font="size=30",
    width=10,
    bg="white",
    fg="black",
	command=shtdwn
)
reboot_button = tk.Button(
    text="  Reboot",
	font="size=30",
    width=10,
    bg="white",
    fg="black",
	command=reboot
)
logout_button = tk.Button(
    text="  Log out",
	font="size=30",
    width=10,
    bg="white",
    fg="black",
	command=logout
)

cancel_button.grid(row=0, column=0, padx=3, pady=2)
shutdown_button.grid(row=2, column=0, padx=3, pady=2)
reboot_button.grid(row=3, column=0, padx=3, pady=2)
logout_button.grid(row=4, column=0, padx=3, pady=2)

w = tk.Canvas(window, width=75, height=5)
w.create_line(0,3,300,3, fill="#a9a9a9")
w.grid(row=1, column=0)

window.mainloop()