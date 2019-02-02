cdef extern from "forms.h":
    ctypedef struct FL_FORM:
        pass

    ctypedef struct FL_OBJECT:
        pass

    ctypedef int FL_Coord

    ctypedef int FL_PLACE
    cdef FL_PLACE FL_PLACE_MOUSE = 1

    ctypedef unsigned long XID

    void* fl_initialize(int* na, char** arg, char* appclass, void* appopt, int nappopt);
    FL_FORM* fl_bgn_form(int type, FL_Coord w, FL_Coord h);
    FL_OBJECT* fl_add_button(int type, FL_Coord x, FL_Coord y, FL_Coord w, FL_Coord h, char* label);
    void fl_end_form();
    XID fl_show_form(FL_FORM* form, int place, int border, char* name);
    FL_OBJECT* fl_do_forms();
    void fl_hide_form(FL_FORM* form);
