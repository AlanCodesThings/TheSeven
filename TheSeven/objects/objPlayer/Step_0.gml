/// @description Insert description here
// You can write your code in this editor


//Check for keyboard input and set direction

hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//Move the player based on keyboard input and check for collisions
switch (state) 
{
	case PLAYERSTATE.FREE:
		Player_Free();
		break;
	case PLAYERSTATE.ATTACK:
		Weapon_Sword();
		break;
		
	
	
}



