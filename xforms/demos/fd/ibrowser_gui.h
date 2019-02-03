/* Header file generated by fdesign on Sat Feb  2 20:43:56 2019 */

#ifndef FD_ibcanvas_h_
#define FD_ibcanvas_h_

#include  "include/forms.h" 

#if defined __cplusplus
extern "C"
{
#endif

/* Callbacks, globals and object handlers */

void browse_file( FL_OBJECT *, long );
void quit_callback( FL_OBJECT *, long );
void convert_type( FL_OBJECT *, long );
void write_image( FL_OBJECT *, long );
void scale_image( FL_OBJECT *, long );
void rotate_image( FL_OBJECT *, long );
void flip_image( FL_OBJECT *, long );
void show_comments( FL_OBJECT *, long );
void window_level( FL_OBJECT *, long );
void convolve_it( FL_OBJECT *, long );
void tint_it( FL_OBJECT *, long );
void enhance_it( FL_OBJECT *, long );
void crop_it( FL_OBJECT *, long );
void warp_it( FL_OBJECT *, long );
void annotate_cb( FL_OBJECT *, long );
void render_cb( FL_OBJECT *, long );


/* Forms and Objects */

typedef struct {
    FL_FORM   * ibcanvas;
    void      * vdata;
    char      * cdata;
    long        ldata;
    FL_OBJECT * canvas;
    FL_OBJECT * text;
    FL_OBJECT * status;
    FL_OBJECT * error;
    FL_OBJECT * format;
    FL_OBJECT * xfloat;
    FL_OBJECT * yfloat;
    FL_OBJECT * angle;
    FL_OBJECT * anti_aliasing;
    FL_OBJECT * comments;
    FL_OBJECT * subimage;
    FL_OBJECT * level;
    FL_OBJECT * width;
    FL_OBJECT * annotate;
} FD_ibcanvas;

FD_ibcanvas * create_form_ibcanvas( void );

#if defined __cplusplus
}
#endif

#endif /* FD_ibcanvas_h_ */
