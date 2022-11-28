function scr_collision_line_first(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	/*
	**  Usage:
	**      collision_line_first(x1,y1,x2,y2,object,prec,notme)
	**
	**  Given:
	**      x1,y2       first point on collision line
	**      x2,y2       second point on collision line
	**      object      which objects to look for, or keyword all
	**      prec        if true, use precise collision checking
	**      notme       if true, ignore the calling instance
	**
	**  Returns:
	**      the instance id of the given object colliding with the
	**      given line and closest to the first given point,
	**      or keyword noone if no instance is found
	**
	**  Notes:
	**      Computes the answer in log2(range) collision checks
	**
	**  GMLscripts.com
	*/
	{
	    var ox,oy,dx,dy,object,prec,notme,sx,sy,inst,i;
	    ox = argument0;
	    oy = argument1;
	    dx = argument2;
	    dy = argument3;
	    object = argument4;
	    prec = argument5;
	    notme = argument6;
	    sx = dx - ox;
	    sy = dy - oy;
	    inst = collision_line(ox,oy,dx,dy,object,prec,notme);
	    if (inst != noone) {
	        while ((abs(sx) >= 1) || (abs(sy) >= 1)) {
	            sx /= 2;
	            sy /= 2;
	            i = collision_line(ox,oy,dx,dy,object,prec,notme);
	            if (i) {
	                dx -= sx;
	                dy -= sy;
	                inst = i;
	            }else{
	                dx += sx;
	                dy += sy;
	            }
	        }
	    }
	    return inst;
	}



}
