from pyforms import *

def test():
    pyfl_initialize("PyFormDemo")
    pyfl_set_font_name(0, "-*-clean-medium-r-*-*-13-*-*-*-*-*-*-*")
    simpleform = pyfl_bgn_form(PYFL_UP_BOX, 230, 160)
    color = pyfl_get_form_background_color(simpleform)
    print(color)
    pyfl_set_form_background_color(simpleform, PYFL_LIGHTGREY)
    button = pyfl_add_button(PYFL_NORMAL_BUTTON, 40, 50, 150, 60, "Push Me Python!!")
    pyfl_set_object_helper(button, "Hello XForms!!")
    pyfl_set_object_color(button, PYFL_GREEN, PYFL_COL1)

    pyfl_end_form()
    pyfl_show_form(simpleform, PYFL_PLACE_MOUSE, PYFL_TRANSIENT, "Push Me Python!!")
    pyfl_do_forms()
    pyfl_hide_form(simpleform)
    pass

if __name__ == '__main__':
    test()

