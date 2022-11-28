x = room_width-sprite_get_width(spr_tokhm_tala);
y = (sprite_get_height(spr_tokhm_tala)/2)*1.5;


var chapter =4;
chStars = 0;
for(var lvl=1; lvl<=24; lvl++){
    var state_score = scr_get_lvl_state(chapter, lvl);
    if(is_array(state_score)){
        var state = state_score[0];
        if(state == "lock") break;
        
        chStars += real(string_replace(state, "star", ""));
    }else break;
}

