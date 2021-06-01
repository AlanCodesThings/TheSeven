///@description Inherit parent/face player
// Inherit the parent event
event_inherited();

//Turn the archer around to face the player
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
}}