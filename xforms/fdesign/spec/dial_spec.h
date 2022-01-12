/* Header file generated by fdesign on Sat Sep 17 15:12:01 2016 */

#ifndef FD_dialattrib_h_
#define FD_dialattrib_h_

#include  "../lib/include/forms.h" 

#if defined __cplusplus
extern "C"
{
#endif

/* Callbacks, globals and object handlers */

void dial_returnsetting_change( FL_OBJECT *, long );
void dial_minmax_change( FL_OBJECT *, long );
void dial_initialvalue_change( FL_OBJECT *, long );
void dial_stepchange_cb( FL_OBJECT *, long );
void dial_thetachange_cb( FL_OBJECT *, long );
void dir_cb( FL_OBJECT *, long );


/* Forms and Objects */

typedef struct {
    FL_FORM   * dialattrib;
    void      * vdata;
    char      * cdata;
    long        ldata;
    FL_OBJECT * background;
    FL_OBJECT * returnsetting;
    FL_OBJECT * minval;
    FL_OBJECT * maxval;
    FL_OBJECT * initialval;
    FL_OBJECT * step;
    FL_OBJECT * thetai;
    FL_OBJECT * thetaf;
    FL_OBJECT * dir;
} FD_dialattrib;

FD_dialattrib * create_form_dialattrib( void );

#if defined __cplusplus
}
#endif

#endif /* FD_dialattrib_h_ */