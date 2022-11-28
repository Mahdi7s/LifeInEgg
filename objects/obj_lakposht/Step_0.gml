/*   var ximp = xstart
            var yimp = ystart
            
            //...........................................................
            
          
            with (obj_chicken) {
                physics_apply_impulse(phy_position_x, phy_position_y, ximp, yimp);
                image_alpha = 0.8;
            }
*/

if(gotoPosX){
image_speed=.2;
mp_linear_step(gotoPosX, gotoPosY, .2, false);
}

/* */
/*  */
