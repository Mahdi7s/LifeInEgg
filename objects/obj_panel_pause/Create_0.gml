cont = instance_create(x, y + 80 - sprite_get_height(spr_continue), obj_continue);
men = instance_create(x, y + sprite_get_height(spr_lvls_menu), obj_lvls_menu);

// ----------- pause --------------
audio_pause_all();
physics_pause_enable(true);

 

if(instance_find(obj_egg_physics_on,0))
{
    with(instance_find(obj_egg_physics_on,0))
    {
        phy_active=false;    
    }
}
if(instance_find(obj_help,0))
{
    instance_deactivate_object(obj_help);
}
/*else if (instance_find(obj_feature_help,0))
{
    instance_deactivate_object(obj_feature_help);
}
else if (instance_find(obj_water_fly_help,0))
{
    instance_deactivate_object(obj_water_fly_help);
}
*/

/* */
/*  */
