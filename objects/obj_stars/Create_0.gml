global.stars = 0;
global.positiveChars = 0;

// ----------------- refresh & pause -------------
var pause = instance_create(room_width-sprite_get_width(spr_pause)/1.2, sprite_get_height(spr_pause)/1.2, obj_pause);
var refresh = instance_create(pause.x - sprite_get_width(spr_pause)*1.1, sprite_get_height(spr_pause)/1.2, obj_refresh);

// --------------------------------
alarm[0]=1;

