if (startRotating) {
    if(!throwEgg) {
    
        tmx = mouse_x;
        tmy = mouse_y;
        throwingAngle = point_direction(scope.x, scope.y, tmx, tmy);
        throwEgg = true;
        scr_event_occurred("sling_end");
    }
}



