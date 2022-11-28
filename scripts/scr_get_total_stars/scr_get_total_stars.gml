function scr_get_total_stars() {
	//var chapter = argument0;
	chStars = 0;
	/*for(var lvl=1; lvl<=24; lvl++){
	    var state_score = scr_get_lvl_state(chapter, lvl);
	    if(is_array(state_score)){
	        var state = state_score[0];
	        if(state == "lock") break;
        
	        chStars += real(string_replace(state, "star", ""));
	    }else break;
	}*/



	for(var chap=1; chap<=5; chap++)
	{
	   for(var lvl=1; lvl<=24; lvl++)
	   {
	        var state_score = scr_get_lvl_state(chap, lvl);
	        if(is_array(state_score))
	        {
	            var state = state_score[0];
	            if(state == "lock") break;       
	            chStars += real(string_replace(state, "star", ""));
	        }
	        else break;
	   } 
	}
	return chStars;



}
