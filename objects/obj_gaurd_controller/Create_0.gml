var negCount = instance_number(obj_phy_negative);
for(var i = 0;i < negCount;i++){
var nObj = instance_find(obj_phy_negative, i);
with(nObj) phy_active = false;
}
      
egg = instance_find(obj_egg_base, 0);
  
alarm[0] = room_speed*20;

