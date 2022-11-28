egg = instance_find(obj_egg_base, 0);
if egg
{
    x = egg.x;
    y = egg.y;
}
else
{
    egg=instance_find(obj_egg_scaled_small,0);
    if egg
    {
        x = egg.x;
        y = egg.y;
    }
    else
    {
        egg=instance_find(obj_egg_scaled_big,0);
        if(egg)
        {
            x = egg.x;
            y = egg.y;       
        }
    }
}
image_angle = egg.image_angle;

