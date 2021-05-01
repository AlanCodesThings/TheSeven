/// @description Insert description here
// You can write your code in this editor
instance_destroy();
switch (sprite_index)
{
	case sWeaponsworddownHB:
		objPlayer.sprite_index = sPlayerdownidol;
		break;
	case sWeaponswordupHB:
		objPlayer.sprite_index = sPlayerupidol;
		break;		
	case sWeaponswordleftHB:
		objPlayer.sprite_index = sPlayerleftidol;
		break;
	case sWeaponswordrightHB:
		objPlayer.sprite_index = sPlayerrightidol;
		break;		
}
objEnemy.invulAuto = false;
objPlayer.state = PLAYERSTATE.FREE;
objPlayer.swordCreated = false;