switch(mode)
{
case"meygoo":
    draw_sprite(spr_meygoo_1024,2,x,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    case"kerm":
    draw_sprite(sprite4_Kerm,2,x,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
    case"kafshdoozak":
    draw_sprite(spr_kafshdoozak_1024,2,x,y);
    if(alarm[0] == -1)
    {
        alarm[0]=room_speed*2;
    }
    break;
}


