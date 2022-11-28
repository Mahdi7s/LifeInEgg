/*draw_set_font(lifeinegg); //setting up the font
draw_sprite(sprite_index,image_index,x,y);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(txt=="")
{
    draw_text(x,y,"Type The Code Here");
}
else
{
    if(blink==false) || (selected==false)
    {
        draw_text(x,y,txt); //draw text
    }
    else
    {
        draw_text(x,y,txt+"|");
    }
}
draw_set_halign(fa_left); //reset alignment
draw_set_valign(fa_top);
*/


draw_sprite(sprite_index,-1,x,y);
txt=string(amount);
/* Next line only needed for passwords...
txt=string_repeat("*",string_length(txt));
*/
//draw_text(x,y-12,"Username:");
draw_set_font(cursor);
draw_text(x+1,y+1,string_hash_to_newline(txt));
cx=x+string_width(string_hash_to_newline(txt)); //New position of the cursor
if(off==0 && focus==1){
  //If cursor is showing, and the box is selected  
  //draw_set_font(cursor);
  draw_text(cx,y+1,string_hash_to_newline("|"));
}
if(focus==0){
  alarm[0]=-1;
  off=1;
  //when the box loses focus, 
  //Turn off cursor and alarm that sets it.
}



/* */
/*  */
