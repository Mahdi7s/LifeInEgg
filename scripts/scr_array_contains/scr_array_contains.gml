function scr_array_contains(argument0, argument1, argument2) {
	var arr = argument0;
	var len = argument1;
	var obj = argument2;

	for(var i = 0;i < len; i++){
	    if(obj == arr[i]) return true;
	}

	return false;



}
