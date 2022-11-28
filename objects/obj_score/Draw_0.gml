if(cScore < score){
cScore += 100;
}
draw_set_font(lifeinegg);
draw_text(x, y, string_hash_to_newline("Your Score = " + string(cScore)));


//----
draw_set_color(c_red);
draw_text(x, y+35,string_hash_to_newline("High Score = "+string(levelhighscore)));

