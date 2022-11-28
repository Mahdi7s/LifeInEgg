if(mouse_check_button_pressed(mb_left)){
    mx = device_mouse_x(0);
}

if(mouse_check_button(mb_left)){
    if(mx){
        var dist = device_mouse_x(0) - mx;
        if(abs(dist) >= 100){
            if((sign(dist) > 0 && dir == "left")
                || (sign(dist) < 0 && dir == "right")){
                room_goto(nextRoom);
            }
        }
    }
}

if(mouse_check_button_released(mb_left)){
    mx = noone;
}


