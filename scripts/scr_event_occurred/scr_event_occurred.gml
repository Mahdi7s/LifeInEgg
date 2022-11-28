function scr_event_occurred(argument0) {
	var event = argument0;

	sound = noone;
	priority = 1;
	loop = false;

	switch(event) {
	    case "sling":
	        sound = snd_sling;
	    break;
	    case "sling_launch":
	        sound = snd_sling_launch;
	    break;
	    case "sling_end":
	        audio_stop_sound(snd_sling);
	    break;
	    case "star":
	        sound = snd_star;
	    break;
	    case "positive":
	        sound = snd_positive;
	    break;
	    case "fail":
	       sound = snd_fail; 
	       audio_stop_all();
	    break;
	    case "win":
	       sound = snd_win;
	       audio_stop_all(); 
	    break;
	    case "play":
	       if(global.soundOn){
	        if(!audio_is_playing(snd_play) || audio_is_paused(snd_play)){
	            sound = snd_play;
	            loop = true;
	            }
	       } else {
	           audio_pause_sound(snd_play);
	       }
	    break;
	    case "play_end":
	        audio_stop_sound(snd_play);
	    break;
	    case "egg_break":
	        sound = snd_egg_break;
	    break;
    
	    // ---------------------- features -----------------------------
	    case "feature_open":
	        sound = snd_feature_open;
	    break;
	    case "feature_coll":
	        sound = snd_feature_coll;
	    break;
	    case "bomb":
	        sound = snd_bomb;
	    break;
	    case "water_fly":
	        //sound = snd_water_fly;
	        if(!audio_is_playing(snd_water_fly)){
	            audio_play_sound(snd_water_fly, 0, false);
	        }
	    break;
	    case "fly":
	        sound = snd_fly;
	        loop = true;
	    break;
	    case "fly_end":
	        audio_stop_sound(snd_fly);
	    break;
	    case "speed":
	        sound = snd_speed;
	    break;
	    case "gaurd":
	        sound = snd_gaurd;
	    break;
	    case "big_small":
	        sound = snd_big_small;
	    break;
	}

	if(audio_exists(sound)){
	    if(audio_is_paused(sound)){
	        audio_resume_sound(sound);
	    }else {
	        audio_play_sound(sound, priority, loop);
	    }
	}



}
