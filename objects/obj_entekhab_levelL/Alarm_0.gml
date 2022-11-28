//show_debug_message("chapter: " + string(chapter) + ", lvl: " + string(level));

var state_score = scr_get_lvl_state(chapter, level);
if(is_array(state_score)){
    state = state_score[0];
    lvlScore = state_score[1];
}


