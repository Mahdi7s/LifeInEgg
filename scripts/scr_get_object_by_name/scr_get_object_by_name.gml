function scr_get_object_by_name(argument0) {
	var retval;

	switch(argument0){
	    case "th_speed":
	        retval = instance_find(obj_th_speed, 0);
	    break;
	    case "th_scale":
	        retval = instance_find(obj_th_scale, 0);
	    break;
	    case "th_bomb":
	        retval = instance_find(obj_th_bomb, 0);
	    break;
	}

	return retval;



}
