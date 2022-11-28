switch(global.mojud){
case"kharchang":
switch(mode)
{
    case"khaste":
    draw_sprite(sprite11_Kharchang,2,x+2,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    
    case"khab":
    draw_sprite(sprite11_Kharchang,3,x+2,y);
    if(alarm[2] == -1)
    {
        alarm[2]=room_speed*2;
    }
    break;
}
break;
case"kharposht":
switch(mode)
{
    case"khaste":
    draw_sprite(spr_kharposht,2,x+2,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    
    case"khab":
draw_sprite(spr_kharposht,3,x+2,y);
    if(alarm[2] == -1)
    {
        alarm[2]=room_speed*2;
    }
    break;
}
break;

case"marmoolak":
switch(mode)
{
    case"khaste":
    draw_sprite(spr_marmoolak,2,x+2,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    
    case"khab":
draw_sprite(spr_marmoolak,3,x+2,y);
    if(alarm[2] == -1)
    {
        alarm[2]=room_speed*2;
    }
    break;
}
break;


case"maar":
switch(mode)
{
    case"khaste":
    draw_sprite(spr_maar,2,x+2,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    
    case"khab":
draw_sprite(spr_maar,3,x+2,y);
    if(alarm[2] == -1)
    {
        alarm[2]=room_speed*2;
    }
    break;
}
break;



case"platipos":
switch(mode)
{
    case"khaste":
    draw_sprite(spr_platipos,2,x+2,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    
    case"khab":
draw_sprite(spr_platipos,3,x+2,y);
    if(alarm[2] == -1)
    {
        alarm[2]=room_speed*2;
    }
    break;
}
break;


}

