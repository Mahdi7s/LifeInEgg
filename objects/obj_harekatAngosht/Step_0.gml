mmx=mouse_x;
mmy=mouse_y;

/*with(instance_find(obj_panel_center,0))
{
 mmx=x;
 mmy=y;
 show_debug_message("stepp"+string(mouse_x)+"mousey="+string(mouse_y));
 show_debug_message("stepp"+string(mmx)+"mmy="+string(mmy));
 
}
*/

mmx=clamp(mmx,xx-(sprite_get_width(spr_menu2taee))/2,xx+(sprite_get_width(spr_menu2taee))/2);
mmy=clamp(mmy,yy-(sprite_get_width(spr_menu2taee))/2,yy+(sprite_get_width(spr_menu2taee))/2);

/* */
action_move_to(mmx, mmy);
/*  */
