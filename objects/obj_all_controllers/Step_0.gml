if(keyboard_check_pressed(vk_backspace))
{
    if(global.WhereAmI=="1stP")
    {
        var bkclicked=false;
        with(instance_find(obj_QuitMenu, 0))
        {            
            bkclicked=true;
            instance_destroy();
        }
        if(bkclicked==false)
        {
            instance_create(room_width/2, room_height/2,obj_QuitMenu);
        }
        if(bkclicked==true){game_end();}
    }
    else if(global.WhereAmI=="c")
    {
        room_goto(room_main_1024);
        global.WhereAmI="1stP";
    }
    else if(string_char_at(global.WhereAmI,1)=="l")
    {
        room_goto(asset_get_index("room_fasl"+string_char_at(global.WhereAmI,3)+"_1024"));
        global.WhereAmI="c";
    }
    else if(string_char_at(global.WhereAmI,1)=="g")
    {
        var bkclicked=false;
        with(instance_find(obj_panel_pause, 0))
        {
            bkclicked=true;
            instance_destroy();
        }
        if(bkclicked==false)
        {
            instance_create(room_width/2, room_height/2, obj_panel_pause);
        }
        
        else if(bkclicked==true)
        {
            room_goto(asset_get_index("room_fasl"+string_char_at(global.WhereAmI,2)+"_1"));
            global.WhereAmI="lc"+string_char_at(global.WhereAmI,2);   
        }
    }
    else
    {
    }
}


