/// @description Insert description here
// You can write your code in this editor

switch (objPlayer.sprite_index)
{
	case sWeaponsworddown:
		sprite_index = sWeaponsworddownHB;
		break;
	case sWeaponswordup:
		sprite_index = sWeaponswordupHB;
		break;		
	case sWeaponswordleft:
		sprite_index = sWeaponswordleftHB;
		break;
	case sWeaponswordright:
		sprite_index = sWeaponswordrightHB;
		break;		
}


hitByAttack = ds_list_create();
show_debug_message("WEAPONCREATED")
hasHit = false;
doOnce = false

