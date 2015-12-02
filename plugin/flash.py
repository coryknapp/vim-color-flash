#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2015 cknapp <cknapp@mbp.local>
#
# Distributed under terms of the MIT license.

"""

"""

from Tkinter import *
from sys import argv

top = Tk()
# Code to add widgets will go here...

canvas = Canvas( top, width=200, height=50)
canvas.pack()

canvas.create_rectangle(0 , 0, 200, 50, fill=argv[1])

top.wm_attributes("-topmost", 1)
top.after(1000, lambda: top.destroy())

top.mainloop()

