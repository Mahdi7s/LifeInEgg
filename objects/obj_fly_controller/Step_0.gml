
isUp = mouse_check_button(mb_left);

var egg = instance_find(obj_egg_base, 0);
with(egg) {
    phy_rotation = 0;
    phy_position_x=x;
    
   if(other.isUp){
  
        physics_apply_force(phy_position_x, phy_position_y, 0, -other.movementSpeed);
        
        
    }
   
}

if(mouse_check_button_pressed(mb_left)){
    if(point_distance(mouse_x, mouse_y, egg.x, egg.y) <= sprite_width/2){
        instance_destroy();
    }
}

