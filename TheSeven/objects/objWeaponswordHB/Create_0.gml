/// @description Initailise sprite and checks

//Switch weapon swing sprite based on player sprite
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

//Checks
hitByAttack = ds_list_create();
hasHit = false;
doOnce = false

