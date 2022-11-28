function scr_create_line(argument0, argument1, argument2, argument3) {
	var obj, xx, yy;

	xx = ((argument2-argument0)/2)+argument0;
	yy = ((argument3-argument1)/2)+argument1;

	obj = instance_create(xx, yy, obj_line);

	obj.xx1 = argument0;
	obj.yy1 = argument1;
	obj.xx2 = argument2;
	obj.yy2 = argument3;




}
