if(global.slingLaunched){
if(mouse_check_button_pressed(mb_left) && featCount > 0){
    mx = window_mouse_get_x();
    my = window_mouse_get_y();
    if(os_type == os_windows || os_type==os_macosx){
    mx = mouse_x;
    my = mouse_y;
    }
    
    //----
    //dis = min(view_wview[0]/2,view_hview[0]/2);
    //if distance_to_point(mouse_x,mouse_y) > dis
    //window_mouse_set(x+lengthdir_x(dis,dir),y+lengthdir_y(dis,dir));
    //----
    
    
    if(alarm[1] == -1) {
        alarm[1] = 5;
    }
    with(instance_find(obj_harekatAngosht,0)){visible=true;}
} else if (mouse_check_button_released(mb_left)) {
    visible = false;
    //----
    with(instance_find(obj_harekatAngosht,0)){instance_destroy();}
    //----
    
    if (global.featureList != noone && !ds_map_empty(global.featureList)) {
        var key = ds_map_find_first(global.featureList);
        while(is_string(key)) {      
            var thObj = ds_map_find_value(global.featureList, key);
            thObj.visible = false;
            
            key = ds_map_find_next(global.featureList, key);
        }  
    }
}

if(show_list && visible && featCount > 0) {
    physics_pause_enable(true);
    
    //var circleRadius = (sprite_get_width(sprite20_Menoo)/2)+(sprite_get_width(sprite14_Bomb)*0.8);
    var circleRadius1 = (sprite_get_width(spr_menu2taee)/2)+(sprite_get_width(spr_bomb)*0.01);
    var circleRadius = (sprite_get_width(spr_menu2taee)/2)+(sprite_get_width(spr_bomb)*0.8);
    //var angleStep = 360 / featCount;
    var angleStep = 360 / diffcount;

    //var featRadius = sprite_get_width(sprite14_Bomb)/2;
    var featRadius = sprite_get_width(spr_bomb)/2;
    x = clamp(mx, circleRadius1+featRadius, window_get_width() - (circleRadius+featRadius));
    y = clamp(my, circleRadius1+featRadius, window_get_height() - (circleRadius+featRadius));
    //show_debug_message(string(featCount));
    var idx = 0;
    var key = ds_map_find_first(global.featureList);
    while(is_string(key)){
        var thObj = ds_map_find_value(global.featureList, key);
        thObj.x = x + lengthdir_x(circleRadius1, angleStep*idx);
        thObj.y = y + lengthdir_y(circleRadius1, angleStep*idx);
        thObj.visible = true;
        
        key = ds_map_find_next(global.featureList, key);
        ++idx;
    }
    //---
    x = clamp(mx, circleRadius1+featRadius, window_get_width() - (circleRadius+featRadius));
    y = clamp(my, circleRadius1+featRadius, window_get_height() - (circleRadius+featRadius));
    
    //---
} else {  
    physics_pause_enable(false);
}
}

