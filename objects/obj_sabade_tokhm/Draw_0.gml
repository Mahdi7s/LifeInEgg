var endIndex = image_number-1;
if(global.stars == 0){
    endIndex = 0;
    image_index = 0;
}else if(global.stars == 1){
    endIndex = 5;
}else if(global.stars == 2){
    endIndex = 10;
}

if(image_index == endIndex){
    image_speed = 0;
}

draw_sprite(spr_sabade_tokhm, image_index, x, y);

