import sys, types
from pyforms cimport *
from cpython.array cimport array
from cpython.mem cimport PyMem_Malloc, PyMem_Free
from libc.string cimport memcpy, memset


cdef class PYFL_FORM:
    cdef FL_FORM* fl_handle


cdef class PYFL_OBJECT:
    cdef FL_OBJECT* fl_handle


cdef class PYFL_POPUP_ENTRY:
    cdef FL_POPUP_ENTRY* fl_handle

    @property
    def val(self):
        return self.fl_handle.val

    @property
    def text(self):
        return <str>self.fl_handle.text


cdef class PYFL_POPUP_RETURN:
    cdef FL_POPUP_RETURN* fl_handle


cdef class PYFL_POPUP_ITEM:
    cdef FL_POPUP_ITEM* fl_handle

    @property
    def text(self):
        return <str>self.fl_handle.text

    @text.setter
    def text(self, value):
        self.fl_handle.text = <bytes>value
        return

    @property
    def shortcut(self):
        return <str>self.fl_handle.shortcut

    @shortcut.setter
    def shortcut(self, value):
        self.fl_handle.shortcut = <bytes>value
        return

    @property
    def type(self):
        return self.fl_handle.type

    @type.setter
    def type(self, value):
        self.fl_handle.type = value
        return

    @property
    def state(self):
        return self.fl_handle.state

    @state.setter
    def state(self, value):
        self.fl_handle.state = value
        return

    cdef public:
        object callback

    def __cinit__(self):
        self.fl_handle = <FL_POPUP_ITEM*>PyMem_Malloc(sizeof(FL_POPUP_ITEM))
        memset(self.fl_handle, 0, sizeof(FL_POPUP_ITEM))
        return

    def __dealloc__(self):
        PyMem_Free(self.fl_handle)
        self.fl_handle = <FL_POPUP_ITEM*>0
        return


cdef public enum:
    PYFL_ON          = FL_ON
    PYFL_OK          = FL_OK
    PYFL_VALID       = FL_VALID
    PYFL_PREEMPT     = FL_PREEMPT
    PYFL_AUTO        = FL_AUTO
    PYFL_WHEN_NEEDED = FL_WHEN_NEEDED
    PYFL_OFF         = FL_OFF
    PYFL_CANCEL      = FL_CANCEL
    PYFL_INVALID     = FL_INVALID
    PYFL_IGNORE      = FL_IGNORE


cdef public enum:
    PYFL_POPUP_NONE     = FL_POPUP_NONE
    PYFL_POPUP_DISABLED = FL_POPUP_DISABLED
    PYFL_POPUP_HIDDEN   = FL_POPUP_HIDDEN
    PYFL_POPUP_CHECKED  = FL_POPUP_CHECKED


cdef public enum:
    PYFL_POPUP_NORMAL = FL_POPUP_NORMAL
    PYFL_POPUP_TOGGLE = FL_POPUP_TOGGLE
    PYFL_POPUP_RADIO  = FL_POPUP_RADIO
    PYFL_POPUP_SUB    = FL_POPUP_SUB
    PYFL_POPUP_LINE   = FL_POPUP_LINE


cdef public enum PYFL_CLASS:
    PYFL_BUTTON        = FL_BUTTON
    PYFL_LIGHTBUTTON   = FL_LIGHTBUTTON
    PYFL_ROUNDBUTTON   = FL_ROUNDBUTTON 
    PYFL_ROUND3DBUTTON = FL_ROUND3DBUTTON
    PYFL_CHECKBUTTON   = FL_CHECKBUTTON
    PYFL_BITMAPBUTTON  = FL_BITMAPBUTTON
    PYFL_PIXMAPBUTTON  = FL_PIXMAPBUTTON
    PYFL_BITMAP        = FL_BITMAP
    PYFL_PIXMAP        = FL_PIXMAP
    PYFL_BOX           = FL_BOX
    PYFL_TEXT          = FL_TEXT
    PYFL_MENU          = FL_MENU
    PYFL_CHART         = FL_CHART
    PYFL_CHOICE        = FL_CHOICE
    PYFL_COUNTER       = FL_COUNTER
    PYFL_SLIDER        = FL_SLIDER
    PYFL_VALSLIDER     = FL_VALSLIDER
    PYFL_INPUT         = FL_INPUT
    PYFL_BROWSER       = FL_BROWSER
    PYFL_DIAL          = FL_DIAL
    PYFL_TIMER         = FL_TIMER
    PYFL_CLOCK         = FL_CLOCK
    PYFL_POSITIONER    = FL_POSITIONER
    PYFL_FREE          = FL_FREE
    PYFL_XYPLOT        = FL_XYPLOT
    PYFL_FRAME         = FL_FRAME
    PYFL_LABELFRAME    = FL_LABELFRAME
    PYFL_CANVAS        = FL_CANVAS
    PYFL_GLCANVAS      = FL_GLCANVAS
    PYFL_TABFOLDER     = FL_TABFOLDER
    PYFL_SCROLLBAR     = FL_SCROLLBAR
    PYFL_SCROLLBUTTON  = FL_SCROLLBUTTON
    PYFL_MENUBAR       = FL_MENUBAR
    PYFL_TEXTBOX       = FL_TEXTBOX
    PYFL_LABELBUTTON   = FL_LABELBUTTON
    PYFL_COMBOBOX      = FL_COMBOBOX
    PYFL_IMAGECANVAS   = FL_IMAGECANVAS
    PYFL_THUMBWHEEL    = FL_THUMBWHEEL
    PYFL_COLORWHEEL    = FL_COLORWHEEL
    PYFL_FORMBROWSER   = FL_FORMBROWSER
    PYFL_SELECT        = FL_SELECT
    PYFL_NMENU         = FL_NMENU
    PYFL_SPINNER       = FL_SPINNER
    PYFL_TBOX          = FL_TBOX


cdef public enum PYFL_BOX_TYPE:
    PYFL_NO_BOX             = FL_NO_BOX
    PYFL_UP_BOX             = FL_UP_BOX
    PYFL_DOWN_BOX           = FL_DOWN_BOX
    PYFL_BORDER_BOX         = FL_BORDER_BOX
    PYFL_SHADOW_BOX         = FL_SHADOW_BOX
    PYFL_FRAME_BOX          = FL_FRAME_BOX
    PYFL_ROUNDED_BOX        = FL_ROUNDED_BOX
    PYFL_EMBOSSED_BOX       = FL_EMBOSSED_BOX
    PYFL_FLAT_BOX           = FL_FLAT_BOX
    PYFL_RFLAT_BOX          = FL_RFLAT_BOX
    PYFL_RSHADOW_BOX        = FL_RSHADOW_BOX
    PYFL_OVAL_BOX           = FL_OVAL_BOX
    PYFL_ROUNDED3D_UPBOX    = FL_ROUNDED3D_UPBOX
    PYFL_ROUNDED3D_DOWNBOX  = FL_ROUNDED3D_DOWNBOX
    PYFL_OVAL3D_UPBOX       = FL_OVAL3D_UPBOX
    PYFL_OVAL3D_DOWNBOX     = FL_OVAL3D_DOWNBOX
    PYFL_OVAL3D_FRAMEBOX    = FL_OVAL3D_FRAMEBOX
    PYFL_OVAL3D_EMBOSSEDBOX = FL_OVAL3D_EMBOSSEDBOX


cdef public enum:
    PYFL_NO_FRAME       = FL_NO_FRAME
    PYFL_UP_FRAME       = FL_UP_FRAME
    PYFL_DOWN_FRAME     = FL_DOWN_FRAME
    PYFL_BORDER_FRAME   = FL_BORDER_FRAME
    PYFL_SHADOW_FRAME   = FL_SHADOW_FRAME
    PYFL_ENGRAVED_FRAME = FL_ENGRAVED_FRAME
    PYFL_ROUNDED_FRAME  = FL_ROUNDED_FRAME
    PYFL_EMBOSSED_FRAME = FL_EMBOSSED_FRAME
    PYFL_OVAL_FRAME     = FL_OVAL_FRAME



cdef public enum PYFL_PD_COL:
    PYFL_BLACK                = FL_BLACK
    PYFL_RED                  = FL_RED
    PYFL_GREEN                = FL_GREEN
    PYFL_YELLOW               = FL_YELLOW
    PYFL_BLUE                 = FL_BLUE
    PYFL_MAGENTA              = FL_MAGENTA
    PYFL_CYAN                 = FL_CYAN
    PYFL_WHITE                = FL_WHITE
    PYFL_TOMATO               = FL_TOMATO
    PYFL_INDIANRED            = FL_INDIANRED
    PYFL_SLATEBLUE            = FL_SLATEBLUE
    PYFL_COL1                 = FL_COL1         # <<-- default background
    PYFL_RIGHT_BCOL           = FL_RIGHT_BCOL
    PYFL_BOTTOM_BCOL          = FL_BOTTOM_BCOL
    PYFL_TOP_BCOL             = FL_TOP_BCOL
    PYFL_LEFT_BCOL            = FL_LEFT_BCOL
    PYFL_MCOL                 = FL_MCOL
    PYFL_INACTIVE             = FL_INACTIVE
    PYFL_PALEGREEN            = FL_PALEGREEN
    PYFL_DARKGOLD             = FL_DARKGOLD
    PYFL_ORCHID               = FL_ORCHID
    PYFL_DARKCYAN             = FL_DARKCYAN
    PYFL_DARKTOMATO           = FL_DARKTOMATO
    PYFL_WHEAT                = FL_WHEAT
    PYFL_DARKORANGE           = FL_DARKORANGE
    PYFL_DEEPPINK             = FL_DEEPPINK
    PYFL_CHARTREUSE           = FL_CHARTREUSE
    PYFL_DARKVIOLET           = FL_DARKVIOLET
    PYFL_SPRINGGREEN          = FL_SPRINGGREEN
    PYFL_DODGERBLUE           = FL_DODGERBLUE
    PYFL_LIGHTER_COL1         = FL_LIGHTER_COL1
    PYFL_DARKER_COL1          = FL_DARKER_COL1
    PYFL_ALICEBLUE            = FL_ALICEBLUE
    PYFL_ANTIQUEWHITE         = FL_ANTIQUEWHITE
    PYFL_AQUA                 = FL_AQUA
    PYFL_AQUAMARINE           = FL_AQUAMARINE
    PYFL_AZURE                = FL_AZURE
    PYFL_BEIGE                = FL_BEIGE
    PYFL_BISQUE               = FL_BISQUE
    PYFL_BLANCHEDALMOND       = FL_BLANCHEDALMOND
    PYFL_BLUEVIOLET           = FL_BLUEVIOLET
    PYFL_BROWN                = FL_BROWN
    PYFL_BURLYWOOD            = FL_BURLYWOOD
    PYFL_CADETBLUE            = FL_CADETBLUE
    PYFL_CHOCOLATE            = FL_CHOCOLATE
    PYFL_CORAL                = FL_CORAL
    PYFL_CORNFLOWERBLUE       = FL_CORNFLOWERBLUE
    PYFL_CORNSILK             = FL_CORNSILK
    PYFL_CRIMSON              = FL_CRIMSON
    PYFL_DARKBLUE             = FL_DARKBLUE
    PYFL_DARKGOLDENROD        = FL_DARKGOLDENROD
    PYFL_DARKGRAY             = FL_DARKGRAY
    PYFL_DARKGREEN            = FL_DARKGREEN
    PYFL_DARKGREY             = FL_DARKGREY
    PYFL_DARKKHAKI            = FL_DARKKHAKI
    PYFL_DARKMAGENTA          = FL_DARKMAGENTA
    PYFL_DARKOLIVEGREEN       = FL_DARKOLIVEGREEN
    PYFL_DARKORCHID           = FL_DARKORCHID
    PYFL_DARKRED              = FL_DARKRED
    PYFL_DARKSALMON           = FL_DARKSALMON
    PYFL_DARKSEAGREEN         = FL_DARKSEAGREEN
    PYFL_DARKSLATEBLUE        = FL_DARKSLATEBLUE
    PYFL_DARKSLATEGRAY        = FL_DARKSLATEGRAY
    PYFL_DARKSLATEGREY        = FL_DARKSLATEGREY
    PYFL_DARKTURQUOISE        = FL_DARKTURQUOISE
    PYFL_DEEPSKYBLUE          = FL_DEEPSKYBLUE
    PYFL_DIMGRAY              = FL_DIMGRAY
    PYFL_DIMGREY              = FL_DIMGREY
    PYFL_FIREBRICK            = FL_FIREBRICK
    PYFL_FLORALWHITE          = FL_FLORALWHITE
    PYFL_FORESTGREEN          = FL_FORESTGREEN
    PYFL_FUCHSIA              = FL_FUCHSIA
    PYFL_GAINSBORO            = FL_GAINSBORO
    PYFL_GHOSTWHITE           = FL_GHOSTWHITE
    PYFL_GOLD                 = FL_GOLD
    PYFL_GOLDENROD            = FL_GOLDENROD
    PYFL_GRAY                 = FL_GRAY
    PYFL_GREENYELLOW          = FL_GREENYELLOW
    PYFL_GREY                 = FL_GREY
    PYFL_HONEYDEW             = FL_HONEYDEW
    PYFL_HOTPINK              = FL_HOTPINK
    PYFL_INDIGO               = FL_INDIGO
    PYFL_IVORY                = FL_IVORY
    PYFL_KHAKI                = FL_KHAKI
    PYFL_LAVENDER             = FL_LAVENDER
    PYFL_LAVENDERBLUSH        = FL_LAVENDERBLUSH
    PYFL_LAWNGREEN            = FL_LAWNGREEN
    PYFL_LEMONCHIFFON         = FL_LEMONCHIFFON
    PYFL_LIGHTBLUE            = FL_LIGHTBLUE
    PYFL_LIGHTCORAL           = FL_LIGHTCORAL
    PYFL_LIGHTCYAN            = FL_LIGHTCYAN
    PYFL_LIGHTGOLDENRODYELLOW = FL_LIGHTGOLDENRODYELLOW
    PYFL_LIGHTGRAY            = FL_LIGHTGRAY
    PYFL_LIGHTGREEN           = FL_LIGHTGREEN
    PYFL_LIGHTGREY            = FL_LIGHTGREY
    PYFL_LIGHTPINK            = FL_LIGHTPINK
    PYFL_LIGHTSALMON          = FL_LIGHTSALMON
    PYFL_LIGHTSEAGREEN        = FL_LIGHTSEAGREEN
    PYFL_LIGHTSKYBLUE         = FL_LIGHTSKYBLUE
    PYFL_LIGHTSLATEGRAY       = FL_LIGHTSLATEGRAY
    PYFL_LIGHTSLATEGREY       = FL_LIGHTSLATEGREY
    PYFL_LIGHTSTEELBLUE       = FL_LIGHTSTEELBLUE
    PYFL_LIGHTYELLOW          = FL_LIGHTYELLOW
    PYFL_LIME                 = FL_LIME
    PYFL_LIMEGREEN            = FL_LIMEGREEN
    PYFL_LINEN                = FL_LINEN
    PYFL_MAROON               = FL_MAROON
    PYFL_MEDIUMAQUAMARINE     = FL_MEDIUMAQUAMARINE
    PYFL_MEDIUMBLUE           = FL_MEDIUMBLUE
    PYFL_MEDIUMORCHID         = FL_MEDIUMORCHID
    PYFL_MEDIUMPURPLE         = FL_MEDIUMPURPLE
    PYFL_MEDIUMSEAGREEN       = FL_MEDIUMSEAGREEN
    PYFL_MEDIUMSLATEBLUE      = FL_MEDIUMSLATEBLUE
    PYFL_MEDIUMSPRINGGREEN    = FL_MEDIUMSPRINGGREEN
    PYFL_MEDIUMTURQUOISE      = FL_MEDIUMTURQUOISE
    PYFL_MEDIUMVIOLETRED      = FL_MEDIUMVIOLETRED
    PYFL_MIDNIGHTBLUE         = FL_MIDNIGHTBLUE
    PYFL_MINTCREAM            = FL_MINTCREAM
    PYFL_MISTYROSE            = FL_MISTYROSE
    PYFL_MOCCASIN             = FL_MOCCASIN
    PYFL_NAVAJOWHITE          = FL_NAVAJOWHITE
    PYFL_NAVY                 = FL_NAVY
    PYFL_OLDLACE              = FL_OLDLACE
    PYFL_OLIVE                = FL_OLIVE
    PYFL_OLIVEDRAB            = FL_OLIVEDRAB
    PYFL_ORANGE               = FL_ORANGE
    PYFL_ORANGERED            = FL_ORANGERED
    PYFL_PALEGOLDENROD        = FL_PALEGOLDENROD
    PYFL_PALETURQUOISE        = FL_PALETURQUOISE
    PYFL_PALEVIOLETRED        = FL_PALEVIOLETRED
    PYFL_PAPAYAWHIP           = FL_PAPAYAWHIP
    PYFL_PEACHPUFF            = FL_PEACHPUFF
    PYFL_PERU                 = FL_PERU
    PYFL_PINK                 = FL_PINK
    PYFL_PLUM                 = FL_PLUM
    PYFL_POWDERBLUE           = FL_POWDERBLUE
    PYFL_PURPLE               = FL_PURPLE
    PYFL_ROSYBROWN            = FL_ROSYBROWN
    PYFL_ROYALBLUE            = FL_ROYALBLUE
    PYFL_SADDLEBROWN          = FL_SADDLEBROWN
    PYFL_SALMON               = FL_SALMON
    PYFL_SANDYBROWN           = FL_SANDYBROWN
    PYFL_SEAGREEN             = FL_SEAGREEN
    PYFL_SEASHELL             = FL_SEASHELL
    PYFL_SIENNA               = FL_SIENNA
    PYFL_SILVER               = FL_SILVER
    PYFL_SKYBLUE              = FL_SKYBLUE
    PYFL_SLATEGRAY            = FL_SLATEGRAY
    PYFL_SLATEGREY            = FL_SLATEGREY
    PYFL_SNOW                 = FL_SNOW
    PYFL_STEELBLUE            = FL_STEELBLUE
    PYFL_TAN                  = FL_TAN
    PYFL_TEAL                 = FL_TEAL
    PYFL_THISTLE              = FL_THISTLE
    PYFL_TURQUOISE            = FL_TURQUOISE
    PYFL_VIOLET               = FL_VIOLET
    PYFL_WHITESMOKE           = FL_WHITESMOKE
    PYFL_YELLOWGREEN          = FL_YELLOWGREEN
    PYFL_COLOR_CHOOSER_COLOR  = FL_COLOR_CHOOSER_COLOR
    PYFL_FREE_COL1            = FL_FREE_COL1
    PYFL_FREE_COL2            = FL_FREE_COL2
    PYFL_FREE_COL3            = FL_FREE_COL3
    PYFL_FREE_COL4            = FL_FREE_COL4
    PYFL_FREE_COL5            = FL_FREE_COL5
    PYFL_FREE_COL6            = FL_FREE_COL6
    PYFL_FREE_COL7            = FL_FREE_COL7
    PYFL_FREE_COL8            = FL_FREE_COL8
    PYFL_FREE_COL9            = FL_FREE_COL9
    PYFL_FREE_COL10           = FL_FREE_COL10
    PYFL_FREE_COL11           = FL_FREE_COL11
    PYFL_FREE_COL12           = FL_FREE_COL12
    PYFL_FREE_COL13           = FL_FREE_COL13
    PYFL_FREE_COL14           = FL_FREE_COL14
    PYFL_FREE_COL15           = FL_FREE_COL15
    PYFL_NOCOLOR              = FL_NOCOLOR


cdef public enum PYFL_PLACE:
    PYFL_PLACE_FREE       = FL_PLACE_FREE
    PYFL_PLACE_MOUSE      = FL_PLACE_MOUSE
    PYFL_PLACE_CENTER     = FL_PLACE_CENTER
    PYFL_PLACE_POSITION   = FL_PLACE_POSITION
    PYFL_PLACE_SIZE       = FL_PLACE_SIZE
    PYFL_PLACE_GEOMETRY   = FL_PLACE_GEOMETRY
    PYFL_PLACE_ASPECT     = FL_PLACE_ASPECT
    PYFL_PLACE_FULLSCREEN = FL_PLACE_FULLSCREEN
    PYFL_PLACE_HOTSPOT    = FL_PLACE_HOTSPOT
    PYFL_PLACE_ICONIC     = FL_PLACE_ICONIC
    PYFL_FREE_SIZE        = FL_FREE_SIZE
    PYFL_FIX_SIZE         = FL_FIX_SIZE


cdef public enum PYFL_ALIGN:
    PYFL_ALIGN_CENTER       = FL_ALIGN_CENTER
    PYFL_ALIGN_TOP          = FL_ALIGN_TOP
    PYFL_ALIGN_BOTTOM       = FL_ALIGN_BOTTOM
    PYFL_ALIGN_LEFT         = FL_ALIGN_LEFT
    PYFL_ALIGN_RIGHT        = FL_ALIGN_RIGHT
    PYFL_ALIGN_LEFT_TOP     = FL_ALIGN_LEFT_TOP
    PYFL_ALIGN_RIGHT_TOP    = FL_ALIGN_RIGHT_TOP
    PYFL_ALIGN_LEFT_BOTTOM  = FL_ALIGN_LEFT_BOTTOM
    PYFL_ALIGN_RIGHT_BOTTOM = FL_ALIGN_RIGHT_BOTTOM
    PYFL_ALIGN_INSIDE       = FL_ALIGN_INSIDE
    PYFL_ALIGN_VERT         = FL_ALIGN_VERT


cdef public enum:
    PYFL_FULLBORDER = FL_FULLBORDER
    PYFL_TRANSIENT  =  FL_TRANSIENT
    PYFL_NOBORDER   = FL_NOBORDER


cdef public enum PYFL_BUTTON_TYPE:
    PYFL_NORMAL_BUTTON     = FL_NORMAL_BUTTON
    PYFL_PUSH_BUTTON       = FL_PUSH_BUTTON
    PYFL_RADIO_BUTTON      = FL_RADIO_BUTTON
    PYFL_HIDDEN_BUTTON     = FL_HIDDEN_BUTTON
    PYFL_TOUCH_BUTTON      = FL_TOUCH_BUTTON
    PYFL_INOUT_BUTTON      = FL_INOUT_BUTTON
    PYFL_RETURN_BUTTON     = FL_RETURN_BUTTON
    PYFL_HIDDEN_RET_BUTTON = FL_HIDDEN_RET_BUTTON
    PYFL_MENU_BUTTON       = FL_MENU_BUTTON


ctypedef int PYFL_Coord 


ctypedef unsigned long PYFL_COLOR


ctypedef unsigned long PYXID


cdef class PyXEvent:
    cdef XEvent* fl_handle


ctypedef int PYFL_BORDER


def pyfl_initialize(str appclass):
    cdef int argc = 1
    cdef array argv = array('B', sys.argv[0].encode())
    PyEval_InitThreads()
    fl_initialize(&argc, <char**>&argv.data.as_voidptr, <bytes>appclass, <void*>0, 0)
    return


def pyfl_bgn_form(int type, PYFL_Coord w, PYFL_Coord h):
    cdef PYFL_FORM result = PYFL_FORM()
    result.fl_handle = fl_bgn_form(type, w, h)
    return result


def pyfl_add_button(int type, PYFL_Coord x, PYFL_Coord y, PYFL_Coord w, PYFL_Coord h, str label):
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result.fl_handle = fl_add_button(type, x, y, w, h, <bytes>label)
    return result


def pyfl_end_form():
    fl_end_form()
    return


def pyfl_show_form(PYFL_FORM form, PYFL_PLACE place, PYFL_BORDER border, str name):
    cdef PYXID result = fl_show_form(form.fl_handle, place, border, <bytes>name)
    return result


cdef int _pyfl_form_atclose(FL_FORM* form, void* user_data) with gil:
    cdef callback = <object>user_data
    result = callback()
    return result


def pyfl_set_form_atclose(PYFL_FORM form, object callback):
    fl_set_form_atclose(form.fl_handle, _pyfl_form_atclose, <void*>callback)
    return


def pyfl_set_app_mainform(PYFL_FORM form):
    fl_set_app_mainform(form.fl_handle)
    return


def pyfl_do_forms():
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    with nogil:
        result.fl_handle = fl_do_forms()
    return result


def pyfl_check_forms():
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result.fl_handle = fl_check_forms()
    return result


def pyfl_hide_form(PYFL_FORM form):
    fl_hide_form(form.fl_handle)
    return


def pyfl_get_form_background_color(PYFL_FORM form):
    cdef PYFL_COLOR result = fl_get_form_background_color(form.fl_handle)
    return result


def pyfl_set_form_background_color(PYFL_FORM form, PYFL_COLOR color):
    fl_set_form_background_color(form.fl_handle, color)
    return


def pyfl_set_object_helper(PYFL_OBJECT obj, str tip):
    fl_set_object_helper(obj.fl_handle, <bytes>tip)
    return


def pyfl_get_font_name(int n):
    result = fl_get_font_name(n)
    return result


def pyfl_set_font_name(int n, str name):
    result = fl_set_font_name(n, <bytes>name)
    return result


def pyfl_set_object_color(PYFL_OBJECT obj, PYFL_COLOR col1, PYFL_COLOR col2):
    fl_set_object_color(obj.fl_handle, col1, col2)
    return


cdef int _pyfl_idle_callback(XEvent* xevent, void* user_data) with gil:
    cdef object callback = <object>user_data
    callback()
    return FL_OK


def pyfl_set_idle_callback(object callback):
    fl_set_idle_callback(_pyfl_idle_callback, <void*>callback)
    return


def pyfl_set_object_label(PYFL_OBJECT obj, str label):
    fl_set_object_label(obj.fl_handle, <bytes>label)
    return


def pyfl_set_object_lcolor(PYFL_OBJECT obj, PYFL_COLOR color):
    fl_set_object_lcol(obj.fl_handle, color)
    return


def pyfl_add_box(PYFL_BOX_TYPE type, PYFL_Coord x, PYFL_Coord y, PYFL_Coord w, PYFL_Coord h, str label):
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result.fl_handle = fl_add_box(type, x, y, w, h, <bytes>label)
    return result


def pyfl_add_labelframe(int type, PYFL_Coord x, PYFL_Coord y, PYFL_Coord w, PYFL_Coord h, str label):
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result.fl_handle = fl_add_labelframe(type, x, y, w, h, <bytes>label)
    return result


def pyfl_set_object_lalign(PYFL_OBJECT obj, int align):
    fl_set_object_lalign(obj.fl_handle, align)
    return


cdef void _pyfl_object_callback(FL_OBJECT* obj, long argument) with gil:
    cdef object callback = <object>(<void*>argument)
    callback()
    return


def pyfl_set_object_callback(PYFL_OBJECT obj, object callback):
    fl_set_object_callback(obj.fl_handle, _pyfl_object_callback, <long>(<void*>callback))
    return


def pyfl_deactivate_object(PYFL_OBJECT obj):
    fl_deactivate_object(obj.fl_handle)
    return


def pyfl_activate_object(PYFL_OBJECT obj):
    fl_activate_object(obj.fl_handle)
    return


def pyfl_object_is_active(PYFL_OBJECT obj):
    result = fl_object_is_active(obj.fl_handle)
    return (result != 0)


def pyfl_set_object_boxtype(PYFL_OBJECT obj, int boxtype):
    fl_set_object_boxtype(obj.fl_handle, boxtype)
    return


def pyfl_set_icm_color(PYFL_COLOR, int r, int g, int b):
    fl_set_icm_color(PYFL_COLOR, r, g, b)
    return


def pyfl_hide_object(PYFL_OBJECT obj):
    fl_hide_object(obj.fl_handle)
    return


def pyfl_show_object(PYFL_OBJECT obj):
    fl_show_object(obj.fl_handle)
    return


cdef public enum:
    PYFL_NORMAL_NMENU       = FL_NORMAL_NMENU
    PYFL_NORMAL_TOUCH_NMENU = FL_NORMAL_TOUCH_NMENU
    PYFL_BUTTON_NMENU       = FL_BUTTON_NMENU
    PYFL_BUTTON_TOUCH_NMENU = FL_BUTTON_TOUCH_NMENU


def pyfl_add_nmenu(int type, PYFL_Coord x, PYFL_Coord y, PYFL_Coord w, PYFL_Coord h, str label):
    cdef PYFL_OBJECT result = PYFL_OBJECT()
    result.fl_handle = fl_add_nmenu(type, x, y, w, h, <bytes>label)
    return result


#def pyfl_add_nmenu_items(PYFL_OBJECT obj, str items):
#    fl_add_nmenu_items(obj.fl_handle, <bytes>items)
#    return


cdef int _pyfl_nmenu_popup_item_callback(FL_POPUP_RETURN* popup_return) with gil:
    cdef object callback = <object>(popup_return.user_data)
    callback(popup_return.val)
    return PYFL_IGNORE


def pyfl_set_nmenu_items(PYFL_OBJECT obj, list items):
    cdef array fl_items = array('B', [0 for i in range((len(items) + 1) * sizeof(FL_POPUP_ITEM))])
    cdef PYFL_POPUP_ITEM popup_item
    cdef int offset = 0
    for i in range(len(items)):
        popup_item = items[i]
        popup_item.fl_handle.callback = &_pyfl_nmenu_popup_item_callback

        memcpy(fl_items.data.as_uchars + offset, popup_item.fl_handle, sizeof(FL_POPUP_ITEM))
        offset += sizeof(FL_POPUP_ITEM)

    cdef FL_POPUP_ENTRY* fl_popup_entries = fl_set_nmenu_items(obj.fl_handle, <FL_POPUP_ITEM*>fl_items.data.as_voidptr)
    assert fl_popup_entries != <FL_POPUP_ENTRY*>0
    result = []
    cdef FL_POPUP_ENTRY* fl_entry = fl_popup_entries
    cdef PYFL_POPUP_ENTRY pyfl_entry
    i = 0
    while fl_entry != <FL_POPUP_ENTRY*>0:
        popup_item = items[i]
        assert fl_entry.callback == &_pyfl_nmenu_popup_item_callback
        fl_entry.user_data = <void*>popup_item.callback

        pyfl_entry = PYFL_POPUP_ENTRY()
        pyfl_entry.fl_handle = fl_entry
        result.append(pyfl_entry)

        fl_entry = <FL_POPUP_ENTRY*>fl_entry.next
        i += 1
    return result


def pyfl_popup_entry_set_state(PYFL_POPUP_ENTRY entry, unsigned int state):
    result = fl_popup_entry_set_state(entry.fl_handle, state)
    return result

