//draw everything
draw_set_alpha(alph);
draw_set_halign(fa_center);
//draw the text
draw_text(x,y,string_hash_to_newline(txt)); 
draw_set_halign(fa_left);
//reset alpha
draw_set_alpha(1); 

