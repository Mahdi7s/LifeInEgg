if(global.lvl == 24) {
    room_goto(room_fasl2_1024);
} else {
    room_goto(asset_get_index("room_marhale_" + string(global.lvl+1)));
}


//----
if(global.lvl==24){
switch(global.chapter)
{
    case 1:
        room_goto(room_fasl2_1024);   
    break;
    
    case 2:
        room_goto(room_fasl3_1024);
    break;

    case 3:
        room_goto(room_fasl4_1024);
    break;

    case 4:
        room_goto(room_fasl5_1024);
    break;


}
}
else
{
    switch(global.chapter)
    {
        case 1:
            room_goto(asset_get_index("room_marhale_" + string(global.lvl+1)));   
        break;
    
        case 2:
            room_goto(asset_get_index("room_marhale_" + string(global.lvl+1)+"P"));
        break;

        case 3:
            room_goto(asset_get_index("room_marhale_" + string(global.lvl+1)+"L"));
        break;

        case 4:
            room_goto(asset_get_index("room_marhale_" + string(global.lvl+1)+"D"));
        break;
        case 5:
            room_goto(asset_get_index("room_marhale_" + string(global.lvl+1)+"E"));
        break;

    }
}
//----

