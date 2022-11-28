/*alarm[1]=room_speed;
with (instance_find(obj_abr_m,0)){
instance_destroy();
instance_create(random(1000), y, obj_abr_m) //Change "obj_Meteor" to the name of the object you have to create...

direction = 0; //Set the direction to whatever you need...
speed = 10; //Set the speed to whatever you need...
}//random(room_width)
*/

with (instance_find(obj_abr_fasl,0)){
instance_destroy();
instance_create(x+(.2*x)+30, y, obj_abr_fasl) //Change "obj_Meteor" to the name of the object you have to create...

direction = 0; //Set the direction to whatever you need...
speed = 3;
if (obj_abr_fasl.x>1536 )
{
obj_abr_fasl.x=random(300)
}
position_empty(0,y) //Set the speed to whatever you need...
}



/* */
/*  */
