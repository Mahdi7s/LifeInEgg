//room_restart();

//audio_stop_all();
//room_goto(asset_get_index("room_marhale_" + string(global.lvl)));

//room_restart();

audio_stop_all();

//-----------
switch(global.chapter)
{
    case 1:
    room_goto(asset_get_index("room_marhale_" + string(global.lvl)));    
    break;
    
    case 2:
    //show_debug_message("KKKKKKKKKKKKKKKK"+string(global.lvl)+"KKKKKKKKKKKK");
    room_goto(asset_get_index("room_marhale_" + string(global.lvl)+"P"));
    break;

    case 3:
    room_goto(asset_get_index("room_marhale_" + string(global.lvl)+"L"));
    break;
    
    case 4:
    room_goto(asset_get_index("room_marhale_" + string(global.lvl)+"D"));
    break;
    
    case 5:
    room_goto(asset_get_index("room_marhale_" + string(global.lvl)+"E"));
    break;
}

//room_goto(asset_get_index("room_marhale_" + string(global.lvl)));

