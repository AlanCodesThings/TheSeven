//Clean up this instance
instance_destroy();

//Switch the players sprite back to idol depending on weapon swing sprite
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

//Set enemy invulnerabilty back to false and state back to free
if (instance_exists(objEnemy))
{
objEnemy.invulAuto = false;
}
objPlayer.state = PLAYERSTATE.FREE;

//Set to false to allow another swing to be created
objPlayer.swordCreated = false;