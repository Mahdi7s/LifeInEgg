var x1 = x - sprite_xoffset;
var y1 = y - sprite_xoffset;
var x2 = x + sprite_xoffset;
var y2 = y + sprite_xoffset;

if(collision_rectangle(x1, y1, x2, y2, obj_egg_base, false, true) > 0){
scr_event_occurred("star");
instance_destroy();
instance_create(x,y,obj_setare_jaragha);
     // removing the room star

    ++global.stars;
    //with(instance_nearest(x, y, obj_collisionable_base))
    ////    instance_destroy();
    //}
    //global.score+=1000;
}

