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
    subImg = 0;
} else {
    subImg = 1;
}

alarm[3] = deltaT;


