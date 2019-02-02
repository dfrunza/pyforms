cimport pyforms
from cpython cimport array
import array

cdef class PYFL_FORM:
    cdef pyforms.FL_FORM* _fl_form

cdef class PYFL_OBJECT:
    cdef pyforms.FL_OBJECT* _fl_object

ctypedef pyforms.FL_Coord PYFL_Coord 

ctypedef int PYFL_BOX_TYPE
PYFL_UP_BOX = 1

ctypedef int PYFL_BUTTON_TYPE
PYFL_NORMAL_BUTTON = 0

ctypedef int PYFL_PLACE
PYFL_PLACE_MOUSE = 1

ctypedef int PYFL_BORDER
PYFL_NOBORDER = 3

def pyfl_initialize(appclass):
    cdef int argc = 1
    cdef array.array argv = array.array('b', 'pyforms')
    pyforms.fl_initialize(&argc, <char**>&argv.data.as_voidptr, <char*>appclass, <void*>0, 0)

def pyfl_bgn_form(type, w, PYFL_Coord h):
    cdef PYFL_FORM result = PYFL_FORM()
    result._fl_form = pyforms.fl_bgn_form(<int>type, <PYFL_Coord>w, <PYFL_Coord>h)
    return result

def pyfl_add_button(type, x, y, w, h, label):
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result._fl_object = pyforms.fl_add_button(<int>type, <PYFL_Coord>x, <PYFL_Coord>y, <PYFL_Coord>w,
                                              <PYFL_Coord>h, <char*>label)
    return result

def pyfl_end_form():
    pyforms.fl_end_form()

def pyfl_show_form(form, place, border, name):
    pyforms.fl_show_form((<PYFL_FORM>form)._fl_form, <PYFL_PLACE>place, <PYFL_BORDER>border, <char*>name)

def pyfl_do_forms():
    pyforms.fl_do_forms()

def pyfl_hide_form(form):
    pyforms.fl_hide_form((<PYFL_FORM>form)._fl_form)

