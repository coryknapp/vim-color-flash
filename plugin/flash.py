"""
called by the corisponding vimscript, validates and displays a window with the
passed in color.
"""

from Tkinter import *
from sys import argv
import string

class InvalidColorError(BaseException):
    """Thrown when there is an error parsing a color string"""
    def __init__(self, arg):
        super(InvalidColorError, self).__init__()
        self.arg = arg

def validate_color_string(color_string):
    """Is this a valid color to draw?

    :color_string: string passed from the vimscript
    :returns: Boolean indicating of the color_string is a color we can dra

    """

    if color_string[0] == '#':
        if all(c in string.hexdigits for c in color_string[1:]):
        #be sure we can convert this to hex
            if (len(color_string)-1) % 3 == 0:
            #digit count must be divisible by three
                return color_string
            raise InvalidColorError("invalid number of hex digits.")
        else:
            raise InvalidColorError("\"hex\" string has non-hex digits.")
    
    # now we have to check the list of named colors TODO and this might vary
    # from environment to environment.
    import x11_colors
    if color_string in x11_colors.named_colors:
        return color_string
    raise InvalidColorError("unknown named color")



top = Tk()
# Code to add widgets will go here...

canvas = Canvas( top, width=200, height=50)
canvas.pack()


try:
    validate_color_string( argv[1] )
    canvas.create_rectangle(0 , 0, 200, 50, fill=argv[1])
    top.wm_attributes("-topmost", 1)
    top.after(1000 * int(argv[2]), lambda: top.destroy())
    top.mainloop()
except InvalidColorError as e:
    print e.arg
