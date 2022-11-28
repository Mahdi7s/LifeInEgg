event_inherited();

clicked=false;
image_speed=0
delta1 = room_speed;
delta2 = 5;

deltaT = delta1;
dChangeCount= 0;

//-----in this case checks the 24th lvl be open
/*var state_score = scr_get_lvl_state(3, 24);

    if(is_array(state_score))
    {
        var state = state_score[0];
        if(state == "lock")
        {
            subImg=0;
        }
        else if(scr_get_chapter_total_score(3)>54)
        {
            subImg=1;
        }
        else{subImg=0;}
    }
    else 
    {
        subImg=0;
    
    }*/
//-----
//-----in this case just checks the score 
if(scr_get_total_stars()>180)
{
    subImg=1;
    var state_score = scr_get_lvl_state(4, 1);
    if(!is_array(state_score))
    {
        scr_set_lvl_state(4, 1, "star0", 0);
    }
}
else{subImg=0;}   
//-----



alarm[1] = deltaT;

image_speed = 0;

/* */
/*  */
