from pyforms import *

def test():
    pyfl_initialize("PyFormDemo")
    simpleform = pyfl_bgn_form(PYFL_UP_BOX, 230, 160)
    color = pyfl_get_form_background_color(simpleform)
    pyfl_set_form_background_color(simpleform, 15)
    pyfl_add_button(PYFL_NORMAL_BUTTON, 40, 50, 150, 60, "Push Me Python!!")
    pyfl_end_form()

    pyfl_show_form(simpleform, PYFL_PLACE_MOUSE, PYFL_NOBORDER, "Push Me Python!!")
    pyfl_do_forms()
    pyfl_hide_form(simpleform)
    pass

if __name__ == '__main__':
    test()

