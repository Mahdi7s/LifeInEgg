//if(is_string(featName)){
var wmx = window_mouse_get_x();
var wmy = window_mouse_get_y();
if(os_type == os_windows || os_type == os_macosx){
wmx = mouse_x;
wmy = mouse_y;
}
if(point_distance(self.x, self.y, wmx, wmy) <= sprite_get_width(sprite15_Bozorg)/2){
if(self.count > 0) {
var theEgg = instance_find(obj_egg_base, 0);

with(instance_find(obj_water_fly_controller, 0)){ // if we are using water fly, destroy that
    instance_destroy();
}



switch (name) {
    case "Fly":
        theEgg.phy_speed_y=0;
        theEgg.image_angle=0;
        scr_event_occurred("fly");
        instance_create(theEgg.phy_position_x, theEgg.phy_position_y, obj_fly_controller);
    break;
    case "Speed":
        scr_event_occurred("speed");
        with(theEgg){
            phy_speed_x *= 8;
            phy_speed_y *= 8;
        }
    break;
   case "Scale_big":
        scr_event_occurred("big_small");        
        with(theEgg) {
            var xX = 0;
            var yY = 0;
            var pX = 0;
            var pY = 0;
            var pRot = 0;
            var spX = 0;
            var spY = 0;
            var angle = 0;
            
            angle = image_angle;
            xX = x;
            yY = y;
            pX = phy_position_x;
            pY = phy_position_y;
            pRot = phy_rotation;
            spX = phy_speed_x;
            spY = phy_speed_y;
            
            instance_destroy();
            //}
            /// -----------------------------------
           /* if(global.size==0)
            {                     
               theEgg = instance_create(xX, yY, obj_egg); 
               with(theEgg)
               {
                 image_angle=angle;
                 x=xX;
                 y=yY;
                 phy_position_x=pX;
                 phy_position_y=pY;
                 phy_rotation=pRot;
                 phy_speed_x=spX;
                 phy_speed_y=spY;
               } 
            }
            else if (global.size==1)
            { */
            
                theEgg = instance_create(xX, yY, obj_egg_scaled_big);
                with(theEgg) {
                phy_position_x = pX;
                phy_position_y = pY;
                phy_rotation = pRot;
                phy_speed_x = spX;
                phy_speed_y = spY;
                image_angle = angle;
            //}
            }
            
        }

        //alarm[0] = room_speed*6;
    break;
    case "Scale_small":
        scr_event_occurred("big_small");
    
        with(theEgg){
            var xX = 0;
            var yY = 0;
            var pX = 0;
            var pY = 0;
            var pRot = 0;
            var spX = 0;
            var spY = 0;
            var angle = 0;
            
            angle = image_angle;
            xX = x;
            yY = y;
            pX = phy_position_x;
            pY = phy_position_y;
            pRot = phy_rotation;
            spX = phy_speed_x;
            spY = phy_speed_y;
            
            instance_destroy();
            
            /// -----------------------------------
            //} 
            theEgg = instance_create(xX, yY, obj_egg_scaled_small);
            
            //issmall=true;
            with(theEgg) {
                phy_position_x = pX;
                phy_position_y = pY;
                phy_rotation = pRot;
                phy_speed_x = spX;
                phy_speed_y = spY;
                image_angle = angle;
            }
        }
    break;
    case "water_fly":
       //theEgg.phy_rotation= 0;
       // theEgg.phy_speed_y=0;
        //theEgg.image_angle=0;
        instance_create(theEgg.phy_position_x, theEgg.phy_position_y, obj_water_fly_controller);
    break;
    case "Bomb":
             //----
            
            var radius = 50; // radius of the collision circle (filled)
            var rdsChange = 300;
            var rdsdestroy = 150;
            var phcount = instance_number(obj_phy);
            var phncount = instance_number(obj_phy_negative);

            scr_event_occurred("bomb");
            
            for(var i = 0;i < phncount; i++){
                var cObj = instance_find(obj_phy_negative, i);
                var offset = point_distance(theEgg.x, theEgg.y, cObj.x, cObj.y);
                if(offset <= rdsdestroy){
                    with(cObj){                       
                        instance_destroy();
                        effect_create_above(ef_flare, x, y, 50, c_gray);
                    }
                }
            }
               
            // phy objects
            for(var i = 0;i < phcount; i++){
                var tObj = instance_find(obj_phy, i);
                if (tObj != noone) {
                    var offset = point_distance(theEgg.x, theEgg.y, tObj.x, tObj.y);
                    if(offset <= radius) {
                        if(tObj != theEgg) {
                            with (tObj) {
                                var dir =  point_direction(theEgg.x, theEgg.y, x, y);
                                physics_apply_impulse(x, y, lengthdir_x(offset, dir), lengthdir_y(offset, dir)); 
                                effect_create_above(ef_flare, theEgg.x, theEgg.y, 50, c_yellow);
                            }
                        }
                    }
                }
            }
            
            // iterating for wood obstacles
            var woodCounts = instance_number(obj_wood_base);
            var idx = 0;
            for(var i = 0;i < woodCounts;i++){
                var wood = instance_find(obj_wood_base, idx);
                if(wood != noone){
                    var woodRadius = radius*4;
                    if(point_distance(theEgg.x, theEgg.y, wood.x, wood.y) <= woodRadius) {
                        with(wood) {
                            instance_destroy();                            
                            //var khord= instance_create(x,y,obj_khordechoob);
                            //----
                            instance_create(theEgg.x,theEgg.y,obj_shake);
                            //effect_create_above(ef_firework, x, y, 1, c_orange);
                            //alarm[1]=room_speed*0.6;
                        }
                    }else{
                        ++idx;
                    }
                }else{
                    ++idx;
                }
            }
            
    break;
    
    case "Gaurd":
        scr_event_occurred("gaurd");
        instance_create(x, y, obj_gaurd_controller);
    break;
}
--count;

//}
}
}

/* */
/*  */
