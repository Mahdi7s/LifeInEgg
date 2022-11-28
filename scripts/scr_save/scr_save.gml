function scr_save(argument0, argument1, argument2) {
	var level = argument0;
	var lvlScore = argument1;
	var lvlStars = argument2;

	var file = get_save_filename("*.*", "savefile.ini");
	if(file_exists(file)){
	    //file_delete(file);
	}
	ini_open(file);

	ini_write_real("", "", level);




}
