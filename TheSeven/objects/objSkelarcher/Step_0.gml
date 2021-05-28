/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(x - objPlayer.x > 0){
	image_xscale = 1;	
}else{
	image_xscale = -1;
}
if (sprite_index == sprSkelarcherleftdownAttack && bowCreated == false){
show_debug_message("gets in");
bow = instance_create_layer(x,y, "Objects", objSkelarcherBow);
bowCreated = true;
with (bow){
	owner = other.id;
}
}