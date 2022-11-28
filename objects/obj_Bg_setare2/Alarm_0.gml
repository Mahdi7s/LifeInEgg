alarm[0]=room_speed*5;
with (instance_find(obj_Bg_setare2,0)){
instance_destroy();
instance_create(random(room_width), random(1/4*room_height), obj_Bg_setare2) //Change "obj_Meteor" to the name of the object you have to create...
{
direction = 0; //Set the direction to whatever you need...
speed = 45; //Se
}}

