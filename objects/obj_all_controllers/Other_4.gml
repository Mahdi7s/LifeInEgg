var rname = room_get_name(room);
if(string_pos("room_marhale", rname) != 0){
/*instance_create(x, y, obj_panel_top);
instance_create(x, y, obj_back_tablet);
instance_create(x, y, obj_refresh_tablet);
instance_create(x, y, obj_view_start_controller);
instance_create(x, y, obj_set_win_size);
instance_create(x, y, obj_aspect_ratio_controller);
instance_create(x, y, obj_drag_controller);
instance_create(x, y, obj_zoom_controller);
instance_create(x, y, Obj_next_inroom); */
instance_create(x, y, obj_panel_center);
//instance_create(x,y, obj_harekatAngosht);
//----
if(global.chapter==1){
switch(global.lvl){
case 1:
instance_create(x, y, obj_help);
break;
case 4:
instance_create(x,y, obj_feature_help);
break;
case 8:
instance_create(x,y,obj_water_fly_help);
break;
}
}
}else{
    if(rname != "rm_lvl_win" && rname != "rm_lvl_fail"){
        scr_event_occurred("play");
    }
}

/* */
/*  */
