name=obj_textbox_code.txt;
show_message("the code is  "+string(name));

/*var t_str;
t_str = string_digits(name);
if(t_str!=name)
{
   notvalid=true;
}
else if(string_length(t_str)!=11)
{
    notvalid=true;
}
else
{
    notvalid=false;
}*/
if(string(name)=="")
{
    instance_create(x,y,obj_message);
}
else{
    with(instance_find(obj_message,0))
    {
        instance_destroy();
    }
    var str;
    str = "";
   // get[0] = http_get("http://localhost:8213/RecievePhoneNumber.ashx?cellno=" +string(name));
    get[0] = http_post_string("http://localhost:8213/RecievePhoneNumber.aspx",string(name));
async_ini = http_get( "http://localhost:8213/check.txt" );
//    show_message("the get message is "+string(get[0]));
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
*/

} //end of else

/* */
/*  */
