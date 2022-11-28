name=obj_textbox_phone.txt;
show_message("your phone number is "+string(name));

if(string(name))
var str;
 str = "";
 get[0] = http_get("http://localhost:8213/RecievePhoneNumber.ashx?cellno=" +string(name));

show_message("getttttt "+string(get[0]));

/*if ds_map_find_value(async_load, "id") == get[0]
    {
    if ds_map_find_value(async_load, "status") >= 0
       {
           r_str = ds_map_find_value(async_load, "result");      
       }
    else
       {
           r_str = "null";
       }
       show_message(r_str);
    }
*?

/* */
/*  */
