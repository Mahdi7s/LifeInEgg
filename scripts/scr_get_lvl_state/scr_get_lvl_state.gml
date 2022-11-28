function scr_get_lvl_state(argument0, argument1) {
	var chapter = argument0;
	var lvl = argument1;

	var section = "ch"+string(chapter)+"lvl"+string(lvl);

	ini_open("gdata.ini");
	if(ini_section_exists(section)){
	    retval[0] = ini_read_string(section, "state", "");
	    retval[1] = ini_read_real(section, "score", 0);
    
	    ini_close();
	    return retval;
	}else if(chapter==1 && lvl==1){
	retval[0] = "star0";
	    retval[1]=0;
    
	    ini_close();
	    return retval;
	}
	else{
	    ini_close();
	    return noone;
	}



}
