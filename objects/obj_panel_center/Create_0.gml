featCount = 0;
show_list = true;
visible = false;

x = room_width/2;
y = room_height - sprite_height/2;
mx = 0;
my = 0;

vxStart = __view_get( e__VW.XView, 0 );
vyStart = __view_get( e__VW.YView, 0 );

alarm[0] = 5;
alarm[1] = -1;

global.featureList = ds_map_create();



//---
diffcount=0;

