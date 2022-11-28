function scr_set_view_pos(argument0, argument1, argument2) {
	var idx = argument0;
	var px = argument1;
	var py = argument2;

	__view_set( e__VW.XView, idx, clamp(px, 0, room_width - __view_get( e__VW.WView, idx )) );
	__view_set( e__VW.YView, idx, clamp(py, 0, room_height - __view_get( e__VW.HView, idx )) );



}
