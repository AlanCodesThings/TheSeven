/// @description player sprite/state
instance_destroy();
switch (sprite_index)
{
	case sAbilityGetsugaDownHB:
		objPlayer.sprite_index = sPlayerdownidol;
		break;
	case sAbilityGetsugaUpHB:
		objPlayer.sprite_index = sPlayerupidol;
		break;		
	case sAbilityGetsugaLeftHB:
		objPlayer.sprite_index = sPlayerleftidol;
		break;
	case sAbilityGetsugaRightHB:
		objPlayer.sprite_index = sPlayerrightidol;
		break;		
}

objPlayer.state = PLAYERSTATE.FREE;
objPlayer.abilityCreated = false;
