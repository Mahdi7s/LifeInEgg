
with(instance_find(obj_panel_pause, 0)){
instance_destroy();
}

var pausePanel = instance_create(room_width/2, room_height/2, obj_panel_pause);

