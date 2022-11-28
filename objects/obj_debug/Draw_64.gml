//if(mouse_check_button_pressed(mb_left)){
//    draw_text(room_width/2, room_height/1.5, "press: " + string(mouse_x) + ", " + string(mouse_y));
//}

if(mouse_check_button_released(mb_left)){
    mx = window_mouse_get_x();//mouse_x;
    my = window_mouse_get_y();//mouse_y;
}

draw_text(mx, my, string_hash_to_newline(string(mx) + "," + string(my)));


