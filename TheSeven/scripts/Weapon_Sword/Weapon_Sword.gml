// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Weapon_Sword(){
	

	switch (sprite_index){
		case  sPlayerdown:
			sprite_index = sWeaponsworddown;
			image_index = 0;
			break;
		case  sPlayerdownidol:
			sprite_index = sWeaponsworddown;
			image_index = 0;
			break;
		case  sPlayerup:
			sprite_index = sWeaponswordup;
			image_index = 0;
			break;
		case   sPlayerupidol:
			sprite_index = sWeaponswordup;
			image_index = 0;
			break;
		case sPlayerright:
			sprite_index = sWeaponswordright;
			image_index = 0;
			break;	
		case sPlayerrightidol:
			sprite_index = sWeaponswordright;
			image_index = 0;
			break;	
		case sPlayerleft :
			sprite_index = sWeaponswordleft;
			image_index = 0;
			break;		
		case sPlayerleftidol:
			sprite_index = sWeaponswordleft;
			image_index = 0;
			break;
			}


if (objPlayer.swordCreated = false){
	objPlayer.swordCreated = true;
	instance_create_layer(x,y,"Objects", objWeaponswordHB);
	
}




}