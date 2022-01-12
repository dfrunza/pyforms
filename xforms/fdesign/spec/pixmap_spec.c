/* Form definition file generated by fdesign on Sat Sep 17 15:12:01 2016 */

#include <stdlib.h>
#include "pixmap_spec.h"


/***************************************
 ***************************************/

FD_pixmapattrib *
create_form_pixmapattrib( void )
{
    FL_OBJECT *obj;
    FD_pixmapattrib *fdui = ( FD_pixmapattrib * ) fl_malloc( sizeof *fdui );

    int old_bw = fl_get_border_width( );
    fl_set_border_width( -1 );

    fdui->vdata = fdui->cdata = NULL;
    fdui->ldata = 0;

    fdui->pixmapattrib = fl_bgn_form( FL_NO_BOX, 540, 280 );

    fdui->background = obj = fl_add_box( FL_FLAT_BOX, 0, 0, 540, 280, "" );

    fdui->frame = obj = fl_add_labelframe( FL_ENGRAVED_FRAME, 20, 20, 490, 240, "Pixmap Attributes" );
    fl_set_object_lsize( obj, FL_NORMAL_SIZE );
    fl_set_object_lstyle( obj, FL_TIMESBOLD_STYLE );

    fdui->filename = obj = fl_add_input( FL_NORMAL_INPUT, 160, 113, 210, 25, "Bitmap/Pixmap File" );
    fl_set_object_callback( obj, pixmap_filename_change, 0 );

    fdui->pixalign = obj = fl_add_choice( FL_NORMAL_CHOICE2, 282, 60, 155, 25, "" );
    fl_set_object_callback( obj, pixmapalign_change, 0 );

    fdui->browse = obj = fl_add_button( FL_NORMAL_BUTTON, 372, 113, 66, 25, "Browse ...." );
    fl_set_button_shortcut( obj, "#B", 1 );
    fl_set_object_callback( obj, pixmaplookfor_pixmapfile_cb, 0 );

    fdui->use_data = obj = fl_add_checkbutton( FL_PUSH_BUTTON, 215, 155, 30, 30, "'#include' image file" );
    fl_set_object_lalign( obj, FL_ALIGN_LEFT );
    fl_set_object_callback( obj, pixmapusedata_change, 0 );

    fdui->fullpath = obj = fl_add_checkbutton( FL_PUSH_BUTTON, 355, 155, 30, 30, "Use full path" );
    fl_set_object_lalign( obj, FL_ALIGN_LEFT );
    fl_set_object_callback( obj, pixmapfullpath_cb, 0 );

    fl_end_form( );

    fdui->pixmapattrib->fdui = fdui;
    fl_set_border_width( old_bw );

    return fdui;
}