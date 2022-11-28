//sensor.x = x;
//sensor.y = y;

if(global.eggDestroyed == false && instance_exists(lastSmoke)){
    var dist = point_distance(lastSmoke.x, lastSmoke.y, x, y);
    if(dist >= 35){
        lastSmoke = instance_create(x, y, obj_smoke);
    }
}

//----
if(global.eggDestroyed==true)
{
    with(instance_find(obj_smoke,0))
    {
     instance_destroy();
    }
    with(instance_find(obj_dolakh,0))
    {
        instance_destroy();
    }
    
}
//----

