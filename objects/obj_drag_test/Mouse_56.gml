if (X<320)
{
    __view_set( e__VW.XView, 0, 0 );
    X=__view_get( e__VW.XView, 0 );
    v2_visible=false;
    v1_visible=true;
    v3_visible=false;
    show_debug_message("00000000");
}
if(X>=320 && X<640 )
{
    __view_set( e__VW.XView, 0, 640 );
    X=__view_get( e__VW.XView, 0 );
    v2_visible=true;
    v1_visible=false;
    v3_visible=false;
    show_debug_message("1111111");
}
else if (X>=640 && X<960)
{
    __view_set( e__VW.XView, 0, 640 );
    X=__view_get( e__VW.XView, 0 );
    v2_visible=true;
    v1_visible=false;
    v3_visible=false;
    show_debug_message("22222222");
}
else if (X>=960 && X<1280)
{
    __view_set( e__VW.XView, 0, 1280 );
    X=__view_get( e__VW.XView, 0 );
    v2_visible=false;
    v1_visible=false;
    v3_visible=true;
    show_debug_message("333333333");

}
else if (X>=1280 && X<1600)
{
     __view_set( e__VW.XView, 0, 1280 );
    X=__view_get( e__VW.XView, 0 );
    v2_visible=false;
    v1_visible=false;
    v3_visible=true;
    show_debug_message("444444444");

}
else if (X>=1600)
{
    __view_set( e__VW.XView, 0, 1280 );
    X=__view_get( e__VW.XView, 0 );
    v2_visible=false;
    v1_visible=false;
    v3_visible=true;
    show_debug_message("55555555");

}


