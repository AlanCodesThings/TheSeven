// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword(){
	
if (sprite_index != sWeaponsworddown){
	sprite_index = sWeaponsworddown;
	image_index = 0;
}

if (objPlayer.swordCreated = false){
	objPlayer.swordCreated = true;
	instance_create_layer(x,y,"Objects", objWeaponswordHB);
}




}