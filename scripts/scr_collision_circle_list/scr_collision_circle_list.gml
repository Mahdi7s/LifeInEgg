function scr_collision_circle_list(argument0, argument1, argument2, argument3, argument4, argument5) {
	/*
	**  Usage:
	**      collision_circle_list(x,y,radius,obj,prec,notme)
	**
	**  Arguments:
	**      x,y         center of the collision circle (filled)
	**      radius      radius of the collision circle (filled)
	**      obj         object to check for collision
	**      prec        set to true for precise collision checking
	**      notme       set to true to ignore the calling instance
	**
	**  Returns:
	**      a ds_list id, or keyword noone if no instances are found
	**
	**  GMLscripts.com
	*/
	{
	    var x1,y1,radius,obj,prec,notme,dsid,i;
	    x1 = argument0;
	    y1 = argument1;
	    radius = argument2;
	    obj = argument3;
	    prec = argument4;
	    notme = argument5;
	    dsid = ds_list_create();
	    with (obj) {
	        if (!notme || id != other.id) {
	            i = collision_circle(x1,y1,radius,id,prec,notme);
	            if (i != noone) ds_list_add(dsid,i);
	        }
	    }
	    if (ds_list_empty(dsid)) {
	        ds_list_destroy(dsid);
	        dsid = noone;
	    }
	    return dsid;
	}



}
