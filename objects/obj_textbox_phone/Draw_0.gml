draw_set_font(lifeinegg); //setting up the font
draw_set_color(c_black);
draw_sprite(sprite_index,image_index,x,y);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(txt=="")
{
    draw_text(x,y,string_hash_to_newline("PhoneNumber"));
}
else
{
    if(blink==false) || (selected==false)
    {
        draw_text(x,y,string_hash_to_newline(txt)); //draw text
    }
    else
    {
        
        draw_text(x,y,string_hash_to_newline(txt+"|"));
    }
}
draw_set_halign(fa_left); //reset alignment
draw_set_valign(fa_top);

