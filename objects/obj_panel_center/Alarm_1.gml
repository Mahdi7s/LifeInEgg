visible = (scr_multitouch_count() == 1) && show_list;
if(visible){
    scr_event_occurred("feature_open");
    //----
    instance_create(mx,my, obj_harekatAngosht);    
    //----
}
alarm[1] = -1;

