//room_goto(room_fasl1_1);


//----
var page;
if(global.lvl>=1 && global.lvl<=9)
{page=1;}
else if(global.lvl>=10 && global.lvl<=18)
{page=2;}
else{page=3;}
switch(global.chapter)
{
    case 1:
        room_goto(asset_get_index("room_fasl1_" + string(page)));
    break;
    case 2:
        room_goto(asset_get_index("room_fasl2_" + string(page)));
    break;
    case 3:
        room_goto(asset_get_index("room_fasl3_" + string(page)));
    break;
    case 4:
        room_goto(asset_get_index("room_fasl4_" + string(page)));
    break;
    case 5:
        room_goto(asset_get_index("room_fasl5_" + string(page)));
    break;
}
//----

