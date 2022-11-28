with(cont){
instance_destroy();
}
with(men){
instance_destroy();
}
physics_pause_enable(false);
audio_resume_all();


if(instance_find(obj_egg_physics_on,0))
{
    with(instance_find(obj_egg_physics_on,0))
    {
        phy_active=true;    
    }
}
else if (instance_find(obj_help,0))
{
    instance_activate_object(obj_help);
}


