var x1 = x - sprite_get_width(spr_kafshdoozak_1024)///2;//sprite_xoffset;
var y1 = y - sprite_get_height(spr_kafshdoozak_1024)///2;//sprite_yoffset;
var x2 = x + sprite_get_width(spr_kafshdoozak_1024)///2;//sprite_xoffset;
var y2 = y + sprite_get_height(spr_kafshdoozak_1024)///2;//sprite_yoffset;

if(collision_rectangle(x1, y1, x2, y2, obj_egg_base, false, true) > 0){
    instance_create(x,y,obj_hobab);
    instance_destroy();
    global.positiveChars += 1;
    // ---------- Collision w/ egg
     var chNegtv = instance_number(obj_phy_negative);
     for(var i = 0;i < chNegtv; i++){
        var tObj = instance_find(obj_phy_negative, i);
        if (tObj != noone) {
            tObj.mode="khaste";
        }
     }
      subImg+=1;
    if(subImg==2)
    {
        subImg=0;
    }
    //var prevHealth = global.healthCount;
    switch(mojud){
    case"kerm":
    global.score += 300;
    //++prevHealth;
    
    break;
    case"kafshdoozak":
    global.score += 100;
    //++prevHealth;
    break;
    case"meygoo":
        //++prevHealth;
       global.score+=550;
    break;
    case "mahi":
        global.score+=600
    break;
    case "malakh":
        global.score+=600
    break;
   /*case"hobab":
    with(instance_nearest(sprite_xoffset,sprite_yoffset,obj_kafshdoozak)
    instance_destroy();
    
    with(instance_nearest(sprite_xoffset,sprite_yoffset,obj_meigoo)
    break;
 */
    }
    //**************
   // if(prevHealth > global.healthCount) {
       // instance_create(x, y, obj_health_noor);
    }
    
   
//}

/*switch(global.mood)
{
case"khaste":
draw_sprite(spr_kharchang_1024,2,obj_kharchang.x+2,obj_kharchang.y)
if(global.mood!=normal)
{
alarm[1]=room_speed*2;
}

break;
case"normal":
//sprite_delete(spr_kharchang_1024)
d3d_set_depth(-100000)
draw_sprite(spr_kharchang_1024,0,obj_kharchang.x+2,obj_kharchang.y)
alarm[0]=room_speed
break;
}

*/


/* */
/*  */
