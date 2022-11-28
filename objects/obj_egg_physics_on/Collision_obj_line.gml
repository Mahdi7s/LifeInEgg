var dolakh = instance_create(x, y, obj_dolakh);
var msp = max(phy_speed_x, phy_speed_y);
dolakh.image_alpha = msp / 10;

show_debug_message("msp: " + string(msp));

//----
if(msp>6)
{
    instance_create(x,y,obj_crash);
}


