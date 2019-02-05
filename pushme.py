from pyforms import *
from time import time

last_update_time = time()
UPDATE_INTERVAL = 1
counter = 0
obj = None

def my_callback():
    global last_update_time
    global counter
    now = time()
    if now > (last_update_time + UPDATE_INTERVAL):
        text = '%d' % counter
        pyfl_set_object_label(obj, text)
        counter += 1
        last_update_time = now

def test():
    global obj
    pyfl_initialize("PyFormDemo")
    pyfl_set_font_name(0, "-*-clean-medium-r-*-*-13-*-*-*-*-*-*-*")
    simpleform = pyfl_bgn_form(PYFL_UP_BOX, 230, 160)
    pyfl_add_box(PYFL_FLAT_BOX, 0, 0, 230, 160, "")
    pyfl_add_labelframe(PYFL_ENGRAVED_FRAME, 10, 10, 50, 40, "Rx")
    obj = pyfl_add_box(PYFL_FLAT_BOX, 15, 15, 40, 30, "?")
    #button = pyfl_add_button(PYFL_NORMAL_BUTTON, 40, 50, 150, 60, "Push Me Python!!")
    #pyfl_set_object_helper(button, "Hello XForms!!")
    pyfl_end_form()

    pyfl_set_idle_callback(my_callback)

    pyfl_show_form(simpleform, PYFL_PLACE_CENTER, PYFL_FULLBORDER, "Push Me Python!!")
    pyfl_do_forms()
    pyfl_hide_form(simpleform)

if __name__ == '__main__':
    test()

