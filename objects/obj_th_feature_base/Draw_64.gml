if(occured=true)
{draw_sprite(spr_featureStars,starssubimage,x,y);}
else if(occured=false)
{draw_sprite(spr_featureStars,count,x,y);}

//draw_sprite(sprite_index, 0, x, y);
if(count > 0) {
      draw_sprite(sprite_index, 0, x, y);  
} else{
    draw_sprite(sprite_index, 1, x, y);
}

//----


//draw_sprite(spr_featureStars,count,x,y);
//----

/*draw_set_font(fnt_feature_count);
draw_set_color(c_blue);
draw_text(x+sprite_width/2 - 18, y-sprite_height/2, string(count));
*/

/* */
/*  */
