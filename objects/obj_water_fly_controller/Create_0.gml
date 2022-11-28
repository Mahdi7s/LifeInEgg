movementSpeedL = 1.8;
movementSpeedR = 1.8;
movementSpeedM = 2;
image_speed=3;
isLeftWatering = false;
isMiddleWatering = false;
isRightWatering = false;

theEgg = instance_find(obj_egg_base, 0);
pnlCenter = instance_find(obj_panel_center, 0);

alarm[0] = room_speed * 20;

pnlCenter.show_list = false;

defaultMass = theEgg.phy_mass;
if(os_type != os_windows && os_type != os_macosx){
//theEgg.phy_mass = 0;
}

