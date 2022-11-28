if(state!= "lock"){
global.chapter = chapter;
global.lvl = level;

if(global.chapter==1){
if(global.lvl==1){
room_goto(rm_scenario);
}else{
room_goto(asset_get_index("room_marhale_" + string(level)));
scr_event_occurred("play_end");
}
}
}


