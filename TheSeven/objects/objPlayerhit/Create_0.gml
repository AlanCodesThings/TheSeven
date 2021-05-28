/// @description Set alarm, initialise variables
alarm[0] = 25;
size = 0.7;
damage = 0;
//Check to see if timer is complete for a new blood splatter to be made
dmgnumberReset = true;
//Create the blood splatter
if (instance_exists(objPlayer)){
instance_create_layer(objPlayer.x, objPlayer.y, "Objects", objBloodSplatter);
}