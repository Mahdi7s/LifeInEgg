var pX = theEgg.phy_position_x;
var pY = theEgg.phy_position_y + theEgg.sprite_height/2;

draw_sprite(spr_water_fly_controller, 0, pX, pY);

if(isLeftWatering) {

    draw_sprite(spr_water_fly_controller, 1, pX, pY);
}

if(isMiddleWatering) {

    draw_sprite(spr_water_fly_controller, 2, pX, pY);
}

if(isRightWatering) {

    draw_sprite(spr_water_fly_controller, 3, pX, pY);
}

