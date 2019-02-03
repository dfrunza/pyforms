/* Form definition file generated by fdesign on Sat Feb  2 20:43:45 2019 */

#include <stdlib.h>
#include "butttypes_gui.h"


/***************************************
 ***************************************/

FD_form0 *
create_form_form0( void )
{
    FL_OBJECT *obj;
    FD_form0 *fdui = ( FD_form0 * ) fl_malloc( sizeof *fdui );

    fdui->vdata = fdui->cdata = NULL;
    fdui->ldata = 0;

    fdui->form0 = fl_bgn_form( FL_NO_BOX, 360, 330 );

    obj = fl_add_box( FL_UP_BOX, 0, 0, 360, 330, "" );

    obj = fl_add_button( FL_HIDDEN_BUTTON, 0, 0, 360, 330, "" );
    fl_set_object_callback( obj, button_cb, 0 );

    obj = fl_add_button( FL_NORMAL_BUTTON, 18, 15, 107, 30, "Normal" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );

    obj = fl_add_button( FL_PUSH_BUTTON, 18, 53, 107, 30, "Push" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );

    obj = fl_add_button( FL_RADIO_BUTTON, 18, 91, 107, 30, "Radio 1" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );
    fl_set_button( obj, 1 );

    obj = fl_add_button( FL_RADIO_BUTTON, 18, 129, 107, 30, "Radio 2" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );

    obj = fl_add_button( FL_TOUCH_BUTTON, 18, 167, 107, 30, "Touch" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );
    fl_set_object_return( obj, FL_RETURN_CHANGED );

    obj = fl_add_button( FL_INOUT_BUTTON, 18, 205, 107, 30, "InOut" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );

    obj = fl_add_button( FL_MENU_BUTTON, 18, 243, 107, 30, "Menu" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );

    obj = fl_add_button( FL_RETURN_BUTTON, 18, 281, 107, 30, "Return" );
    fl_set_object_lstyle( obj, FL_BOLD_STYLE );
    fl_set_object_callback( obj, button_cb, 0 );

    fdui->br = obj = fl_add_browser( FL_NORMAL_BROWSER, 135, 15, 210, 296, "" );
    fl_set_object_color( obj, FL_COL1, FL_YELLOW );
    fl_set_object_callback( obj, button_cb, 0 );

    fl_end_form( );

    fdui->form0->fdui = fdui;

    return fdui;
}
