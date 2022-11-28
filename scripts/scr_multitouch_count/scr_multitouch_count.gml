function scr_multitouch_count() {
	//multitouch_count()
	//Returns the number of active touches
	{
	    var retval = 0;
	    for(var i = 0;i < 5;i++){
	        if(device_mouse_check_button(i, mb_left)){
	            ++retval;
	        }else break;
	    }
	    return retval;
	}



}
