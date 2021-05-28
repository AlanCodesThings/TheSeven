/// @description Initialise getsuga values
vsp = 4;
dirCheck = undefined; 
disTrav = 0;
doOnce = false;
doOnceReset = 0;
hitByAttack = ds_list_create();
hasHit = ds_list_create();
switch (objGetsuga.sprite_index)
{
	case sAbilityGetsugaDownHB:
		y += 15;
		dirCheck = "down";
		break;
	case sAbilityGetsugaUpHB:
		y -= 15;
		dirCheck = "up";
		break;		
	case sAbilityGetsugaLeftHB:
		x -= 15;
		dirCheck = "left";
		break;
	case sAbilityGetsugaRightHB:
		x += 15;
		dirCheck = "right";
		break;		
}
