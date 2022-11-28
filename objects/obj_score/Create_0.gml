//define a timer for scoring 
/*if(global.minute<1)
    {
        if(global.second<30)
        {
            score = (global.positiveChars*2000)+(global.stars*5000);
        }
        else
        {
            score = (global.positiveChars*1000)+(global.stars*4000);
        }
    }
else
    {
        score = (global.positiveChars*500)+(global.stars*1000);
    }
*/
if(!variable_global_exists("second")) global.second = 0;
if(!variable_global_exists("minute")) global.minute = 0;
score = ((global.positiveChars*2000)+(global.stars*5000))-global.second*500-global.minute*1000;
//score = (global.positiveChars*2000)+(global.stars*5000);
cScore = 0;
levelhighscore=0;
//----
var state_score=scr_get_lvl_state(global.chapter,global.lvl);
if(is_array(state_score))
{
    var state_ghabli = state_score[0];
    var lvlScoret_ghabli = state_score[1];
    //update the "stars" and the "score"
    if(real(string_char_at(state_ghabli,5))<global.stars)
    {
        if(lvlScoret_ghabli<score)
        {
            levelhighscore=score;
            scr_set_lvl_state(global.chapter, global.lvl, "star"+string(global.stars), score);
        }
        else
        {
            levelhighscore=lvlScoret_ghabli;
            scr_set_lvl_state(global.chapter, global.lvl, "star"+string(global.stars), lvlScoret_ghabli);
        }
    }
    //just update the "score"
    else
    {
        if(lvlScoret_ghabli<score)
        {
            levelhighscore=score;
            scr_set_lvl_state(global.chapter, global.lvl, state_ghabli, score);
        }
        else
        {
            levelhighscore=lvlScoret_ghabli;
            scr_set_lvl_state(global.chapter, global.lvl, state_ghabli, lvlScoret_ghabli);   
        }
    }

}
//if the state is not in the gdata file, set lvl state
else
{
    levelhighscore=score;
    scr_set_lvl_state(global.chapter, global.lvl, "star"+string(global.stars), score);
}

if(global.positiveCount==global.positiveChars)
{
    if(global.lvl < 24)
    {
         //if the state doesnt exist in the gdata, set lvl state
         var state_score1=scr_get_lvl_state(global.chapter,global.lvl+1);
         if(!is_array(state_score1))
         {
            scr_set_lvl_state(global.chapter, global.lvl+1, "star0", 0);
         }
    }
    else if(global.lvl == 24 && global.chapter < 5)
    {
        //if the state doesnt exist in the gdata, set lvl state
        var state_score1=scr_get_lvl_state(global.chapter+1,1);
        if(!is_array(state_score1))
        {
            scr_set_lvl_state(global.chapter+1, 1, "star0", 0);
        }
    }
}

/* */
/*  */
