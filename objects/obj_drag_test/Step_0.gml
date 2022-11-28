
X=__view_get( e__VW.XView, 0 );
//Y=view_yview;
if(mouse_check_button(mb_left))
{
    __view_set( e__VW.Object, 0, noone );
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (vmx) );
    //view_yview-=vmy;
}
vmx=(mouse_x-X)-omx;
omx=(mouse_x-X);
//vmy=(mouse_y-Y)-omy;
//omy=(mouse_y-Y);



