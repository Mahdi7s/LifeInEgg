var x1 = x - sprite_xoffset;
var y1 = y - sprite_yoffset;
var x2 = x + sprite_xoffset;
var y2 = y + sprite_yoffset;

if((collision_rectangle(x1, y1, x2, y2, obj_egg_base, false, true) > 0)){
    var thObj = ds_map_find_value(global.featureList, name);
    ++thObj.count;
    scr_event_occurred("feature_coll");
    instance_destroy();
}





