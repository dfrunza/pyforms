cdef extern from "Python.h":
    cdef void PyEval_InitThreads();

cdef extern from "forms.h":
    ctypedef struct FL_FORM:
        pass

    ctypedef struct FL_OBJECT:
        pass

# +-- FL_CLASS
    ctypedef enum FL_CLASS:
        FL_INVALID_CLASS,
        FL_BUTTON,
        FL_LIGHTBUTTON,
        FL_ROUNDBUTTON, 
        FL_ROUND3DBUTTON,
        FL_CHECKBUTTON,
        FL_BITMAPBUTTON,
        FL_PIXMAPBUTTON,
        FL_BITMAP,
        FL_PIXMAP,
        FL_BOX,
        FL_TEXT,
        FL_MENU,
        FL_CHART,
        FL_CHOICE,
        FL_COUNTER,
        FL_SLIDER,
        FL_VALSLIDER,
        FL_INPUT,
        FL_BROWSER,
        FL_DIAL,
        FL_TIMER,
        FL_CLOCK,
        FL_POSITIONER,
        FL_FREE,
        FL_XYPLOT,
        FL_FRAME,
        FL_LABELFRAME,
        FL_CANVAS,
        FL_GLCANVAS,
        FL_TABFOLDER,
        FL_SCROLLBAR,
        FL_SCROLLBUTTON,
        FL_MENUBAR,
        FL_TEXTBOX,
        FL_LABELBUTTON,
        FL_COMBOBOX,
        FL_IMAGECANVAS,
        FL_THUMBWHEEL,
        FL_COLORWHEEL,
        FL_FORMBROWSER,
        FL_SELECT,
        FL_NMENU,
        FL_SPINNER,
        FL_TBOX,
        FL_CLASS_END
# --+

# +-- FL_BOX_TYPE
    ctypedef enum FL_BOX_TYPE:
        FL_NO_BOX,
        FL_UP_BOX,
        FL_DOWN_BOX,
        FL_BORDER_BOX,
        FL_SHADOW_BOX,
        FL_FRAME_BOX,
        FL_ROUNDED_BOX,
        FL_EMBOSSED_BOX,
        FL_FLAT_BOX,
        FL_RFLAT_BOX,
        FL_RSHADOW_BOX,
        FL_OVAL_BOX,
        FL_ROUNDED3D_UPBOX,
        FL_ROUNDED3D_DOWNBOX,
        FL_OVAL3D_UPBOX,
        FL_OVAL3D_DOWNBOX,
        FL_OVAL3D_FRAMEBOX,
        FL_OVAL3D_EMBOSSEDBOX,

        # for internal use only

        FL_TOPTAB_UPBOX,
        FL_SELECTED_TOPTAB_UPBOX,
        FL_BOTTOMTAB_UPBOX,
        FL_SELECTED_BOTTOMTAB_UPBOX,
        FL_MAX_BOX_STYLES
# --+

# +-- Frames types
    cdef enum:
        FL_NO_FRAME,
        FL_UP_FRAME,
        FL_DOWN_FRAME,
        FL_BORDER_FRAME,
        FL_SHADOW_FRAME,
        FL_ENGRAVED_FRAME,
        FL_ROUNDED_FRAME,
        FL_EMBOSSED_FRAME,
        FL_OVAL_FRAME
# --+

# +-- FL_PD_COL (Colors)
    ctypedef enum FL_PD_COL:
        FL_BLACK,
        FL_RED,
        FL_GREEN,
        FL_YELLOW,
        FL_BLUE,
        FL_MAGENTA,
        FL_CYAN,
        FL_WHITE,
        FL_TOMATO,
        FL_INDIANRED,
        FL_SLATEBLUE,
        FL_COL1
        FL_RIGHT_BCOL,
        FL_BOTTOM_BCOL,
        FL_TOP_BCOL,
        FL_LEFT_BCOL,
        FL_MCOL,
        FL_INACTIVE,
        FL_PALEGREEN,
        FL_DARKGOLD,
        FL_ORCHID,
        FL_DARKCYAN,
        FL_DARKTOMATO,
        FL_WHEAT,
        FL_DARKORANGE,
        FL_DEEPPINK,
        FL_CHARTREUSE,
        FL_DARKVIOLET,
        FL_SPRINGGREEN,
        FL_DODGERBLUE,
        FL_LIGHTER_COL1,
        FL_DARKER_COL1,
        FL_ALICEBLUE,
        FL_ANTIQUEWHITE,
        FL_AQUA,
        FL_AQUAMARINE,
        FL_AZURE,
        FL_BEIGE,
        FL_BISQUE,
        FL_BLANCHEDALMOND,
        FL_BLUEVIOLET,
        FL_BROWN,
        FL_BURLYWOOD,
        FL_CADETBLUE,
        FL_CHOCOLATE,
        FL_CORAL,
        FL_CORNFLOWERBLUE,
        FL_CORNSILK,
        FL_CRIMSON,
        FL_DARKBLUE,
        FL_DARKGOLDENROD,
        FL_DARKGRAY,
        FL_DARKGREEN,
        FL_DARKGREY,
        FL_DARKKHAKI,
        FL_DARKMAGENTA,
        FL_DARKOLIVEGREEN,
        FL_DARKORCHID,
        FL_DARKRED,
        FL_DARKSALMON,
        FL_DARKSEAGREEN,
        FL_DARKSLATEBLUE,
        FL_DARKSLATEGRAY,
        FL_DARKSLATEGREY,
        FL_DARKTURQUOISE,
        FL_DEEPSKYBLUE,
        FL_DIMGRAY,
        FL_DIMGREY,
        FL_FIREBRICK,
        FL_FLORALWHITE,
        FL_FORESTGREEN,
        FL_FUCHSIA,
        FL_GAINSBORO,
        FL_GHOSTWHITE,
        FL_GOLD,
        FL_GOLDENROD,
        FL_GRAY,
        FL_GREENYELLOW,
        FL_GREY,
        FL_HONEYDEW,
        FL_HOTPINK,
        FL_INDIGO,
        FL_IVORY,
        FL_KHAKI,
        FL_LAVENDER,
        FL_LAVENDERBLUSH,
        FL_LAWNGREEN,
        FL_LEMONCHIFFON,
        FL_LIGHTBLUE,
        FL_LIGHTCORAL,
        FL_LIGHTCYAN,
        FL_LIGHTGOLDENRODYELLOW,
        FL_LIGHTGRAY,
        FL_LIGHTGREEN,
        FL_LIGHTGREY,
        FL_LIGHTPINK,
        FL_LIGHTSALMON,
        FL_LIGHTSEAGREEN,
        FL_LIGHTSKYBLUE,
        FL_LIGHTSLATEGRAY,
        FL_LIGHTSLATEGREY,
        FL_LIGHTSTEELBLUE,
        FL_LIGHTYELLOW,
        FL_LIME,
        FL_LIMEGREEN,
        FL_LINEN,
        FL_MAROON,
        FL_MEDIUMAQUAMARINE,
        FL_MEDIUMBLUE,
        FL_MEDIUMORCHID,
        FL_MEDIUMPURPLE,
        FL_MEDIUMSEAGREEN,
        FL_MEDIUMSLATEBLUE,
        FL_MEDIUMSPRINGGREEN,
        FL_MEDIUMTURQUOISE,
        FL_MEDIUMVIOLETRED,
        FL_MIDNIGHTBLUE,
        FL_MINTCREAM,
        FL_MISTYROSE,
        FL_MOCCASIN,
        FL_NAVAJOWHITE,
        FL_NAVY,
        FL_OLDLACE,
        FL_OLIVE,
        FL_OLIVEDRAB,
        FL_ORANGE,
        FL_ORANGERED,
        FL_PALEGOLDENROD,
        FL_PALETURQUOISE,
        FL_PALEVIOLETRED,
        FL_PAPAYAWHIP,
        FL_PEACHPUFF,
        FL_PERU,
        FL_PINK,
        FL_PLUM,
        FL_POWDERBLUE,
        FL_PURPLE,
        FL_ROSYBROWN,
        FL_ROYALBLUE,
        FL_SADDLEBROWN,
        FL_SALMON,
        FL_SANDYBROWN,
        FL_SEAGREEN,
        FL_SEASHELL,
        FL_SIENNA,
        FL_SILVER,
        FL_SKYBLUE,
        FL_SLATEGRAY,
        FL_SLATEGREY,
        FL_SNOW,
        FL_STEELBLUE,
        FL_TAN,
        FL_TEAL,
        FL_THISTLE,
        FL_TURQUOISE,
        FL_VIOLET,
        FL_WHITESMOKE,
        FL_YELLOWGREEN,
        FL_COLOR_CHOOSER_COLOR,
        FL_FREE_COL1,
        FL_FREE_COL2,
        FL_FREE_COL3,
        FL_FREE_COL4,
        FL_FREE_COL5,
        FL_FREE_COL6,
        FL_FREE_COL7,
        FL_FREE_COL8,
        FL_FREE_COL9,
        FL_FREE_COL10,
        FL_FREE_COL11,
        FL_FREE_COL12,
        FL_FREE_COL13,
        FL_FREE_COL14,
        FL_FREE_COL15,
        FL_FREE_COL16,
        FL_NOCOLOR = 2147483647 # INT_MAX
# --+

# +-- FL_ALIGN
    ctypedef enum FL_ALIGN:
        FL_ALIGN_CENTER,
        FL_ALIGN_TOP          = 1,
        FL_ALIGN_BOTTOM       = 2,
        FL_ALIGN_LEFT         = 4,
        FL_ALIGN_RIGHT        = 8,
        FL_ALIGN_LEFT_TOP     = (FL_ALIGN_TOP    | FL_ALIGN_LEFT),
        FL_ALIGN_RIGHT_TOP    = (FL_ALIGN_TOP    | FL_ALIGN_RIGHT),
        FL_ALIGN_LEFT_BOTTOM  = (FL_ALIGN_BOTTOM | FL_ALIGN_LEFT),
        FL_ALIGN_RIGHT_BOTTOM = (FL_ALIGN_BOTTOM | FL_ALIGN_RIGHT),
        FL_ALIGN_INSIDE       = (1 << 13),
        FL_ALIGN_VERT         = (1 << 14)    # not functional yet
# --+

    cdef enum:
        FL_FULLBORDER = 1,
        FL_TRANSIENT,
        FL_NOBORDER

    ctypedef enum FL_PLACE:
        FL_PLACE_FREE       =   0,
        FL_PLACE_MOUSE      =   1,
        FL_PLACE_CENTER     =   2,
        FL_PLACE_POSITION   =   4,
        FL_PLACE_SIZE       =   8,
        FL_PLACE_GEOMETRY   =  16,
        FL_PLACE_ASPECT     =  32,
        FL_PLACE_FULLSCREEN =  64,
        FL_PLACE_HOTSPOT    = 128,
        FL_PLACE_ICONIC     = 256,

        FL_FREE_SIZE        = ( 1 << 14 ),
        FL_FIX_SIZE         = ( 1 << 15 )

    ctypedef int FL_Coord

    ctypedef unsigned long FL_COLOR

    ctypedef unsigned long XID

    ctypedef union XEvent:
        pass

    void* fl_initialize(int* na, char** arg, const char* appclass, void* appopt, int nappopt);

    FL_OBJECT* fl_add_button(int type, FL_Coord x, FL_Coord y, FL_Coord w, FL_Coord h, const char* label);

    FL_FORM* fl_bgn_form(int type, FL_Coord w, FL_Coord h);

    void fl_end_form();

    XID fl_show_form(FL_FORM* form, int place, int border, const char* name);

    # The `nogil` function annotation declares that it is safe to call the function without the GIL.
    # It is perfectly allowed to execute it while holding the GIL.
    FL_OBJECT* fl_do_forms() nogil;

    FL_OBJECT* fl_check_forms();

    void fl_hide_form(FL_FORM* form);

    FL_COLOR fl_get_form_background_color(FL_FORM* form);

    void fl_set_form_background_color(FL_FORM* form, FL_COLOR color);

    void fl_set_object_helper(FL_OBJECT* obj, const char* tip);

    const char* fl_get_font_name(int n);

    int fl_set_font_name(int n, const char* name);

    void fl_set_object_color(FL_OBJECT* obj, FL_COLOR col1, FL_COLOR col2);

    ctypedef int (*FL_APPEVENT_CB)(XEvent*, void*);

    FL_APPEVENT_CB fl_set_idle_callback(FL_APPEVENT_CB callback, void* user_data);

    void fl_set_object_label(FL_OBJECT* obj, const char* label);

    FL_OBJECT* fl_add_box(int type, FL_Coord x, FL_Coord y, FL_Coord w, FL_Coord h, const char* label);

    FL_OBJECT* fl_add_labelframe(int type, FL_Coord x, FL_Coord y, FL_Coord w, FL_Coord h, const char* label);

    void fl_set_object_lalign(FL_OBJECT* obj, int align);

    ctypedef void (*FL_CALLBACKPTR)(FL_OBJECT*, long);

    FL_CALLBACKPTR fl_set_object_callback(FL_OBJECT* obj, FL_CALLBACKPTR callback, long argument);

    void fl_deactivate_object(FL_OBJECT* obj);

    void fl_activate_object(FL_OBJECT* obj);

    int fl_object_is_active(FL_OBJECT* obj);

    void fl_set_object_boxtype(FL_OBJECT* obj, int boxtype);

