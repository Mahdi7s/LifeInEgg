 var pX = theEgg.phy_position_x;

 if(!other.isUp){
  theEgg.phy_rotation= 0;
 theEgg.phy_speed_x=0
 theEgg.phy_speed_y=0.5
 theEgg.image_angle=0;
 subImg+=0.8;
 }
 else{
 theEgg.image_angle=0;
 theEgg.phy_rotation= 0;
 subImg+=0.4
 }
 
var pY = theEgg.phy_position_y;// + theEgg.sprite_height/2;



draw_sprite(spr_fly_controller, subImg, pX, pY);


