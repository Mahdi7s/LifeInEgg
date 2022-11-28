draw_self();

draw_set_color(make_color_rgb(255,255,255));
draw_set_font(lifeinegg);
draw_text(x - sprite_get_height(spr_tokhm_tala)*2.3, y-10, string_hash_to_newline(string(chStars) + "/" + string(24*3*5)));

