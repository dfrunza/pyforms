cdef extern from "forms.h":
    ctypedef struct FL_FORM:
        pass

    ctypedef struct FL_OBJECT:
        pass

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

    cdef enum:
        FL_FULLBORDER = 1,
        FL_TRANSIENT,
        FL_NOBORDER

    ctypedef int FL_Coord

    ctypedef unsigned long FL_COLOR

    ctypedef unsigned long XID

    void* fl_initialize(int* na, char** arg, const char* appclass, void* appopt, int nappopt);

    FL_OBJECT* fl_add_button(int type, FL_Coord x, FL_Coord y, FL_Coord w, FL_Coord h, const char* label);

    FL_FORM* fl_bgn_form(int type, FL_Coord w, FL_Coord h);

    void fl_end_form();

    XID fl_show_form(FL_FORM* form, int place, int border, const char* name);

    FL_OBJECT* fl_do_forms();

    void fl_hide_form(FL_FORM* form);

    FL_COLOR fl_get_form_background_color(FL_FORM* form);

    void fl_set_form_background_color(FL_FORM* form, FL_COLOR color);

    void fl_set_object_helper(FL_OBJECT* obj, const char* tip);

    const char* fl_get_font_name(int n);

    int fl_set_font_name(int n, const char* name);

    void fl_set_object_color(FL_OBJECT* obj, FL_COLOR col1, FL_COLOR col2);

