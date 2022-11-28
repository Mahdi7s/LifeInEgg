/*alarm[1]=room_speed;
with (instance_find(obj_abr_m,0)){
instance_destroy();
instance_create(random(1000), y, obj_abr_m) //Change "obj_Meteor" to the name of the object you have to create...

direction = 0; //Set the direction to whatever you need...
speed = 10; //Set the speed to whatever you need...
}//random(room_width)
*/

with (instance_find(obj_abr_m,0)){
//instance_destroy();
//instance_create(x+(0.3*x), y, obj_abr_m) //Change "obj_Meteor" to the name of the object you have to create...
instance_change(obj_abr_m,x )

direction = 0; //Set the direction to whatever you need...
speed = 5;


//position_empty(0,y) //Set the speed to whatever you need...

}
//(.5*x)  ,random(300)



/* */
/*  */
