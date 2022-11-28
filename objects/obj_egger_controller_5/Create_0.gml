egger = instance_create(x, y, obj_partabgar_sbt);
egger.image_angle=0;
thetaX = 0; // set this on first mouse click (where the scope creates)
thetaY = 0;
thetaSet = false;
angVel = 0; // the angular velocity
ratio = 1 ; 
angle = -90;
eggAngle = -90;
eggerDestroyed = false;
angVelFriction = 0.0005;
startRotating = false;
// ----------------------------------------------------------------------------
global.slingLaunched = false;
// ------------------------------Zoom Fields-----------------------------------

zoomMinAngVel = 30;
zoomFactorMin = 1;
zoomFactorMax = 0.7;
zoomFactorCurrent = zoomFactorMin;
zoomFactorStep = 0.005;

throwEgg = false;
throwingAngle = -1;
//----------------------------------
gholabopen=false;
// ----------------------- A Touchable and simple sling! ----------------------

scope = instance_create(x, y, obj_sling_scope);
scope.image_xscale = 0.1;
scope.image_yscale = 0.1;
scope.visible = false;

egger.x = scope.x;
egger.y = scope.y;

// --------------------creating egg & rope-------------------

eggDist = 75;//103 65
egg = instance_create(scope.x, scope.y+eggDist, obj_egg_physics_off);
gholab=instance_create(scope.x,scope.y,obj_partabgar_mthrk);

//eggSpeed= instance_create(egg.x,egg.y,obj_rade_speed)
// ---------------------------------------------------
scopeRadius = sprite_get_xoffset(spr_sling_scope);

//--------------------------------------------------------------

slingScopeEnd = noone;


