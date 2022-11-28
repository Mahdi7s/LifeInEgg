function scr_zoom(argument0, argument1, argument2) {
	var zoom_factor = clamp(argument0, 0, 1);
	var zoom_pos_x = argument1;
	var zoom_pos_y = argument2;

	var viewWidth = (room_width) * zoom_factor;
	var viewHeight = (room_height) * zoom_factor;

	show_debug_message("zoom factor: " + string(zoom_factor));

	var vx = zoom_pos_x - (viewWidth/2);
	var vy = zoom_pos_y - (viewHeight/2);

	scr_set_view_pos(0, vx, vy);

	if(abs(__view_get( e__VW.WView, 0 ) - viewWidth) >= 3){
	    __view_set( e__VW.WView, 0, viewWidth );
	}
	if(abs(__view_get( e__VW.HView, 0 ) - viewHeight) >= 3){
	    __view_set( e__VW.HView, 0, viewHeight );
	}



}
