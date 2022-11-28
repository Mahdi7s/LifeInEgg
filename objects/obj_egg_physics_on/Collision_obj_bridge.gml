//global.score+=2000;
if(instance_number(obj_collisionable_base) == 0)
{//win
if(alarm[5] <= 0){
scr_event_occurred("win");
scr_event_occurred("egg_break");
instance_create(x,y, obj_egg_break_anim);
global.eggDestroyed=true;
with(instance_find(obj_chicken, 0)){
gotoPosX = other.x;
gotoPosY = other.y;
}
with(instance_find(obj_gaurd_controller, 0)){
    instance_destroy();
}
with(instance_find(obj_water_fly_controller, 0)){
    instance_destroy();
}

with(instance_find(obj_fly_controller, 0)){
    instance_destroy();
}
visible=false;
alarm[5] = room_speed*5;
}
}
else{//fail
if (alarm[6] <= 0){
scr_event_occurred("fail");
scr_event_occurred("egg_break");
global.eggDestroyed=true;
effect_create_above(ef_explosion, x, y, 0.07, c_white);

with(instance_find(obj_gaurd_controller, 0)){
    instance_destroy();
}
with(instance_find(obj_water_fly_controller, 0)){
    instance_destroy();
}

with(instance_find(obj_fly_controller, 0)){
    instance_destroy();
}

visible=false;
phy_active=false;
alarm[6] = room_speed*5;
}
}

