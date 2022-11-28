len = image_xscale-1;
ropeWidth = sprite_get_width(spr_bridge);
pinWidth = sprite_get_width(spr_pin);
xx = sprite_get_width(spr_pin);

ins1 = instance_create(x, y, obj_pin);
ins2 = instance_create(x+xx, y, obj_bridge);
physics_joint_revolute_create(ins1, ins2, ins1.x, ins1.y, 0, 0, false, 0, 0, false, false);

repeat(len) {
    xx += ropeWidth;
    ins1 = ins2;
    ins2 = instance_create(x+xx, y, obj_bridge);
    
    physics_joint_revolute_create(ins1, ins2, ins1.x, ins1.y, 0, 0, false, 0, 0, false, false);
}

ins1 = ins2;
ins2 = instance_create(x+xx+pinWidth, y, obj_pin);
physics_joint_revolute_create(ins1, ins2, ins1.x, ins1.y, 0, 0, false, 0, 0, false, false);

