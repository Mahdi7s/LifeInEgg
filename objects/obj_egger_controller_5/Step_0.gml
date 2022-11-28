if(startRotating){
    if (scope.image_xscale < 1) {
        scope.image_xscale += 0.1;
        scope.image_yscale += 0.1;
    }
    
    // ------------------------------------------------------------------

        angVel += 0.5;
        if(angVel > 40){
            angVel = 40;
        }
        eggAngle += angVel;
        var eAng = eggAngle%360;
        gholab.image_angle = eAng + 90;
        egg.x = scope.x + lengthdir_x(eggDist, eAng);
        egg.y = scope.y+ lengthdir_y(eggDist, eAng);
}

if(throwEgg){
        var bet1 = (throwingAngle - (angVel/2));
        var bet2 = (throwingAngle + (angVel/2));
        var eggAng = eggAngle%360;
        
        //if ((eggAng >= bet1) && (eggAng <= bet2)) {
        if(abs(angle_direction(throwingAngle, eggAng)) <= angVel){
            var nEgg = instance_create(egg.x, egg.y, obj_egg_physics_on);
            
            //.....................
            
            nEgg.image_angle = egg.image_angle;
            
            with(egg){
               instance_destroy();
            }
           
            egg = nEgg;
    
            tmx = mouse_x;
            tmy = mouse_y;
            if(os_type != os_windows || os_type != os_macosx){
                tmx = window_mouse_get_x();
                tmy = window_mouse_get_y();
            }
            
            var eggDir = point_direction(scope.x, scope.y, tmx, tmy);
            var angVelAbs = abs(angVel);
            var ximp = lengthdir_x(angVelAbs, throwingAngle)/25;
            var yimp = lengthdir_y(angVelAbs, throwingAngle)/21;
            
            //...........................................................
            
          
            with (egg) {
                physics_apply_impulse(phy_position_x, phy_position_y, ximp, yimp);
                image_alpha = 0.8;
            }
    
            // ready to recreate!
            eggerDestroyed = true;
            //alarm[0] = room_speed*.5;
            
            throwEgg = false;
            startRotating = false;
            
            global.slingLaunched = true;
            global.canDrag = true;
            with(scope){
               instance_destroy();
            }
            
            with(egger){
               instance_destroy();
            }
           with(gholab)
           {
              instance_destroy();
           }
           with(slingScopeEnd){
            instance_destroy();
           }
           
           instance_destroy();
        }
}

