switch(state){
case "lock":
draw_sprite(Bg_entekhab_faslP, 0, x, y);
break;

case "star0":
draw_sprite(Bg_entekhab_faslP, 1, x, y);
break;

case "star1":
draw_sprite(Bg_entekhab_faslP, 2, x, y);
break;

case "star2":
draw_sprite(Bg_entekhab_faslP, 3, x, y);
break;

case "star3":
draw_sprite(Bg_entekhab_faslP, 4, x, y);
break;
}

if(state != "lock"){
draw_set_font(lifeinegg);
draw_set_color(make_color_rgb(108, 69, 12));
draw_text(x, y-10, string_hash_to_newline(string(level)));
}

