if(deltaT == delta1) {
if(dChangeCount++ == 2){
    deltaT = delta2;
    dChangeCount = 0;
}

} else {
if(dChangeCount++ == 2){
    deltaT = delta1;
    dChangeCount=0;
    }
}

if(subImg == 1){
    subImg = 2;
} else if(subImg==2) {
    subImg = 1;
}else{subImg=0;}

alarm[1] = choose(delta1, delta2);  

