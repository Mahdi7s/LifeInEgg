alarm[0]=room_speed*2;
with (instance_find(obj_barg2,0)){
instance_destroy();
instance_create(random(room_width), random(room_height), obj_barg2) //Change "obj_Meteor" to the name of the object you have to create...
{
direction = 0; //Set the direction to whatever you need...
speed = 10; //Se
}}

