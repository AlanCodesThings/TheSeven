/// @description Set getsuga hitbox

//change hitbox depending on getsuga sprite
switch (objPlayer.sprite_index)
{
	case sAbilityGetsugaDown:
		sprite_index = sAbilityGetsugaDownHB;
		break;
	case sAbilityGetsugaUp:
		sprite_index =sAbilityGetsugaUpHB;
		break;		
	case sAbilityGetsugaLeft:
		sprite_index = sAbilityGetsugaLeftHB;
		break;
	case sAbilityGetsugaRight:
		sprite_index = sAbilityGetsugaRightHB;
		break;		
}