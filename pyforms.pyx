cimport pyforms
from cpython cimport array
import array

cdef int _enumval_counter = 0

cdef _enumval(int start= -1):
    global _enumval_counter
    if start != -1:
        _enumval_counter = start
    result = _enumval_counter
    _enumval_counter += 1
    return result

cdef class PYFL_FORM:
    cdef pyforms.FL_FORM* _fl_handle

cdef class PYFL_OBJECT:
    cdef pyforms.FL_OBJECT* _fl_handle

ctypedef int PYFL_Coord 

ctypedef unsigned long PYFL_COLOR

ctypedef unsigned long PYXID

ctypedef int PYFL_BOX_TYPE
PYFL_UP_BOX = 1

ctypedef int PYFL_BUTTON_TYPE
PYFL_NORMAL_BUTTON = 0

ctypedef int PYFL_PLACE
PYFL_PLACE_MOUSE = 1

ctypedef int PYFL_BORDER
PYFL_NOBORDER = 3

def pyfl_initialize(char* appclass):
    cdef int argc = 1
    cdef array.array argv = array.array('b', 'pyforms')
    pyforms.fl_initialize(&argc, <char**>&argv.data.as_voidptr, appclass, <void*>0, 0)

def pyfl_bgn_form(int type, PYFL_Coord w, PYFL_Coord h):
    cdef PYFL_FORM result = PYFL_FORM()
    result._fl_handle = pyforms.fl_bgn_form(type, w, h)
    return result

def pyfl_add_button(int type, PYFL_Coord x, PYFL_Coord y, PYFL_Coord w, PYFL_Coord h, char* label):
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result._fl_handle = pyforms.fl_add_button(type, x, y, w, h, label)
    return result

def pyfl_end_form():
    pyforms.fl_end_form()

def pyfl_show_form(PYFL_FORM form, PYFL_PLACE place, PYFL_BORDER border, char* name):
    cdef PYXID result = pyforms.fl_show_form(form._fl_handle, place, border, name)
    return result

def pyfl_do_forms():
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result._fl_handle = pyforms.fl_do_forms()
    return result

def pyfl_hide_form(PYFL_FORM form):
    pyforms.fl_hide_form(form._fl_handle)

def pyfl_get_form_background_color(PYFL_FORM form):
    cdef PYFL_COLOR result = pyforms.fl_get_form_background_color(form._fl_handle)
    return result

def pyfl_set_form_background_color(PYFL_FORM form, PYFL_COLOR color):
    pyforms.fl_set_form_background_color(form._fl_handle, color)
