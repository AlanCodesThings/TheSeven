/// @description Insert description here
// You can write your code in this editor
if (owner.sprite_index = sprSkelarcherleftDead){
	instance_destroy();
}
x = owner.x;
y = owner.y+8;
image_angle = point_direction(x,y,objPlayer.x, objPlayer.y);
if(owner.sprite_index == sprSkelarcherleftdown){
	instance_destroy();	
	owner.bowCreated = false;
}
