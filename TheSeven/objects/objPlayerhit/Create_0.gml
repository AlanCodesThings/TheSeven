/// @description Insert description here
// You can write your code in this editor
alarm[0] = 25;
size = 0.7;
damage = 0;
dmgnumberReset = true;
if (instance_exists(objPlayer)){
instance_create_layer(objPlayer.x, objPlayer.y, "Objects", objBloodSplatter);
}