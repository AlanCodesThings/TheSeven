/// @description Insert description here
// You can write your code in this editor

//Set walking speed and collision detection
speedWalk = 1.75;
checkWalk = speedWalk + 2;
hitpoints = 50;
swordCreated = false;

state = PLAYERSTATE.FREE;

enum PLAYERSTATE
{
	FREE, 
	ATTACK,
	SPELL
}

instance_create_layer(x,y,"Objects",objWeaponspawner);