function scr_set_lvl_state(argument0, argument1, argument2, argument3) {
	var chapter = argument0;
	var lvl = argument1;
	var lvlState = argument2;
	var lvlScore = argument3;

	var section = "ch"+string(chapter)+"lvl"+string(lvl);

	ini_open("gdata.ini");
	ini_write_string(section, "state", lvlState);
	ini_write_real(section, "score", lvlScore);
	ini_close();




}
