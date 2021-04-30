/// @description Initialise values and states
// You can write your code in this editor

//Set walking speed and collision detection
speedWalk = 1.75;
checkWalk = speedWalk + 2;

//hitpoints
hitpoints = 50;
maxHitpoints = hitpoints;
hpPercent = 1;

swordCreated = false;
abilityCreated = false;
state = PLAYERSTATE.FREE;
stateAttack = ATTACKSTATE.AUTO;

moveX = 0;
moveY = 0;
tilemap = layer_tilemap_get_id("Collision");
enum PLAYERSTATE
{
	FREE, 
	ATTACK,
	ABILITY
}


enum ATTACKSTATE
{
	AUTO,
	GETSUGA
}



instance_create_layer(x,y,"Objects",objWeaponspawner);