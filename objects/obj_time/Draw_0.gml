draw_set_color(make_color_rgb(255,255,255));
draw_set_font(lifeinegg);
if(global.second<10)
{
    if(global.minute<10)
    {
        draw_text(x,y,string_hash_to_newline("0"+string(global.minute)+"-"+"0"+string(global.second)));
    }
    else
    {
        draw_text(x,y,string_hash_to_newline(string(global.minute)+"-"+"0"+string(global.second)));   
    }
}
else
{
    if(global.minute<10)
    {
        draw_text(x,y,string_hash_to_newline("0"+string(global.minute)+"-"+string(global.second)));
    }
    else
    {
        draw_text(x,y,string_hash_to_newline(string(global.minute)+"-"+string(global.second)));   
    }


}

