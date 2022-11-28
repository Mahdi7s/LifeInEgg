var xmargin = 10;
var ymargin = 10;

var sx = (x - sprite_width/2) + sprite_get_width(sprite14_Bomb)/2 + xmargin;
var sy = (y - sprite_height/2) + sprite_get_height(sprite14_Bomb)/2 + ymargin;
var xx = sx;
var yy = sy;

var tmpCount = 0;
featCount = instance_number(obj_feature_base);

//----
//count different features to calculate angle for menu

differentFCount=ds_map_create();
for (var i = 0; i < featCount; i++) 
{
    var ff = instance_find(obj_feature_base, i);
    if(!ds_map_exists(differentFCount, ff.name)) 
    {
        ds_map_add(differentFCount, ff.name, ff.name);
        diffcount+=1;
    }
}
ds_map_destroy(differentFCount);
//----


if(featCount > 0){
var circleRadius = sprite_get_width(sprite20_Menoo)/2;
//var angleStep = 360 / featCount;
var angleStep=360 / diffcount;


for (var i = 0; i < featCount; i++) {
    var feat = instance_find(obj_feature_base, i);
    if(!ds_map_exists(global.featureList, feat.name)) {
        var thName = "obj_th_" + string_lower(feat.name);
        
        var thObj = instance_create(x, y, asset_get_index(thName));
        thObj.x = lengthdir_x(circleRadius, angleStep);
        thObj.y = lengthdir_y(circleRadius, angleStep);        
        thObj.visible = false;
        //thObj.count = instance_number(asset_get_index(thName));
        ds_map_add(global.featureList, feat.name, thObj);
        ++tmpCount;
    }
}
}


