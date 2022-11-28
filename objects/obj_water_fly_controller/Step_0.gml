if(os_type != os_windows && os_type != os_macosx){
    if(mouse_check_button(mb_left)){
        isMiddleWatering = true;
        movementSpeedM = 3.5;
    }
    else {
        isMiddleWatering = false;
    }
    /*if(YoYo_GetTiltY() < -0.1){
        isMiddleWatering = true;
        movementSpeedM = 3.5;
    }
    if(YoYo_GetTiltY() < -0.1){
        isMiddleWatering = true;
        movementSpeedM = -3.5;
    }*/
    
    if(YoYo_GetTiltX() < -0.1){
        isLeftWatering = true;
        isRightWatering = false;
        movementSpeedL = abs(YoYo_GetTiltX()*3);
    }
    
    if(YoYo_GetTiltX() > 0.1){
        isRightWatering = true;
        isLeftWatering = false;
        movementSpeedR = abs(YoYo_GetTiltX()*3);
    }
}


var egg = instance_find(obj_egg_base, 0);
with(egg) {
    phy_rotation = 0;
    
    phX = 0;
    phY = 0;
    if (other.isLeftWatering) {
        phX = other.movementSpeedL;
    }
    else if (other.isRightWatering) {
        phX = -other.movementSpeedR;
    }
    
    if (other.isMiddleWatering) {
        phY = -other.movementSpeedM;
    }
    
    physics_apply_force(phy_position_x, phy_position_y, phX, phY);
}


/* */
/*  */
