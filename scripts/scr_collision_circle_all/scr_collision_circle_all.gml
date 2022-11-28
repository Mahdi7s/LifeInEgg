function scr_collision_circle_all(argument0, argument1, argument2, argument3, argument4) {
	var fromX = argument0;
	var fromY = argument1;
	var obj = argument2;
	var radius = argument3;

	with(argument4){
	var count = instance_number(obj);    // returns 0 !!!
	show_debug_message("scr_collision_circle_all count: "+ string(count));

	var list = ds_list_create();
	for(var i = 0;i < count; i++){
	    var tObj = instance_find(obj, i);
	    if(tObj == noone){
	        if(point_distance(fromX, fromY, tObj.x, tObj.y) <= radius){
	            ds_list_add(list, tObj);
	        }
	    }
	}

	if(ds_list_empty(list)){
	    list = noone;
	}

	return list;
	}



}
