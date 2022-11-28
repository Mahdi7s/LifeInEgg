function scr_eggs_menu(argument0, argument1, argument2) {
	counter = argument0;
	lstEggs = argument1;
	dir = argument2;

	lstEggsVis[0] =4;
	lstEggsVis[1] =0;
	lstEggsVis[2] =1;

	if(counter == 0){
	    lstEggsVis[0] =4;
	    lstEggsVis[1] =0;
	    lstEggsVis[2] =1;
	}else if(counter == 4){
	    lstEggsVis[0] =3;
	    lstEggsVis[1] =4;
	    lstEggsVis[2] =1;
	}else{
	    lstEggsVis[0] = counter-1;
	    lstEggsVis[1] = counter;
	    lstEggsVis[2] = counter+1;
	}

	eggsDegrees[0] = 90;
	eggsDegrees[1] = 360;
	eggsDegrees[2] = 180;

	showCounter = 0;

	for(var i=0;i < ds_list_size(lstEggs);i++){
	    var tokhm = ds_list_find_value(lstEggs, i);
	    var eggDegree = 270;
    
	    if(i == lstEggsVis[0] || i == lstEggsVis[1] || i == lstEggsVis[2]){
	        tokhm.visible = true;
	        eggDegree = eggsDegrees[showCounter++];
	    } else {
	        tokhm.visible = false;
	    }
    
	    tokhm.angleTo = eggDegree;
	    if(tokhm.angleTo == tokhm.angle){
	        tokhm.angle-=1;
	    }
	    tokhm.dir = dir;
	}

	showCounter=0;



}
